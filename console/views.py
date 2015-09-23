#coding=utf-8
# Create your views here.
import json
import collections
from datetime import datetime, timedelta
from django.contrib.auth import authenticate, login as django_login, logout as django_logout
from django.core.urlresolvers import reverse

from django.db.models import Count
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from django.db import connection

from smart_device import settings


def login(request):
    print settings.PROJECT_DIR
    print settings.STATICFILES_DIRS
    return render(request, 'login.html')


# /console/auth_login
def auth_login(request):
    username = request.POST.get('username')
    password = request.POST.get('password')
    print username, 'now login...'
    user = authenticate(username=username, password=password)
    if user is not None:
        django_login(request, user)
        return HttpResponse(json.dumps({'code': 0}), content_type="application/json")
    else:
        return HttpResponse(json.dumps({'code': -1}), content_type="application/json")


# /console/logout
def logout(request):
    django_logout(request)
    return HttpResponseRedirect(reverse('login'))


# /console/index
def index(request):
    return render(request, 'index.html')


# /console/location
def location(request):
    return render(request, 'location.html')


# /console/rfid
def rfid(request):
    return render(request, 'rfid.html')


# /console/stats
def stats(request):
    return render(request, 'stats.html')


# /console/video
def video(request):
    return render(request, 'video.html')


# /console/ajax_device_list
def ajax_device_list(request):
    return HttpResponse(json.dumps({'success': 'yes'}), content_type="application/json")


# /console/ajax_device_list
def ajax_device_info(request, device_id):
    print 'device_id is:', device_id
    return HttpResponse(json.dumps({'success': 'yes'}), content_type="application/json")


def _get_total_user_by_day(_condition):
    total_guid_sql = '''
    SELECT DATE(time) AS day,
    count(distinct guid) AS guid_count
    FROM sniffer_data WHERE guid_type=1 %s
    GROUP BY DATE(time)
    '''

    total_guid_sql = total_guid_sql % _condition
    # print 'total_guid_sql:', total_guid_sql

    cursor = connection.cursor()
    cursor.execute(total_guid_sql)
    total_user_dict = dict()
    for user_data in _dict_fetchall(cursor):
        # print user_data
        # print user_data['day']
        total_user_dict[str(user_data['day'])] = user_data['guid_count']

    return total_user_dict


def _get_customer_by_day(_condition, is_new=None):
    customer_sql = '''
    SELECT DATE(enter_time) AS day,
    count(distinct guid) AS guid_count
    FROM customer_analysis WHERE 1=1 %s
    GROUP BY DATE(enter_time)
    '''

    customer_sql = customer_sql % _condition
    # print 'customer_sql:', customer_sql

    cursor = connection.cursor()
    cursor.execute(customer_sql)
    customer_dict = dict()
    for customer_data in _dict_fetchall(cursor):
        # print customer_data
        # print customer_data['day']
        customer_dict[str(customer_data['day'])] = customer_data['guid_count']

    return customer_dict


def _datetime_iterator(from_date=None, to_date=None, delta=timedelta(days=1)):
    if from_date:
        if not isinstance(from_date, datetime):
            from_date = datetime.strptime(from_date, '%Y-%m-%d')
    else:
        from_date = datetime.now()
    if to_date:
        if not isinstance(to_date, datetime):
            to_date = datetime.strptime(to_date, '%Y-%m-%d')

    while to_date is None or from_date <= to_date:
        yield from_date
        from_date = from_date + delta
    return


# /console/customerflow/flow
def customer_flow(request):
    total_user_dict = _get_total_user_by_day(_get_time_conditions(request))
    enter_user_dict = _get_customer_by_day(_get_entertime_conditions(request))
    new_user_dict = _get_customer_by_day(_get_entertime_conditions(request, is_new=1))
    old_user_dict = _get_customer_by_day(_get_entertime_conditions(request, is_new=0))

    start_date = request.GET.get('start_date')
    end_date = request.GET.get('end_date')
    result = collections.OrderedDict()
    for day in _datetime_iterator(str(start_date), str(end_date)):
        date = day.strftime('%Y-%m-%d')
        result[date] = {
            'total': 0 if total_user_dict.get(date) is None else total_user_dict.get(date),
            'enter': 0 if enter_user_dict.get(date) is None else enter_user_dict.get(date),
            'new': 0 if new_user_dict.get(date) is None else new_user_dict.get(date),
            'old': 0 if old_user_dict.get(date) is None else old_user_dict.get(date)
        }

    return HttpResponse(json.dumps(result), content_type="application/json")


def _dict_fetchall(cursor):
    """Returns all rows from a cursor as a dict"""
    desc = cursor.description
    result = list()
    for row in cursor.fetchall():
        result.append(dict(zip([col[0] for col in desc], row)))
    return result


def _get_entertime_conditions(request, is_new=None):
    device_id = request.GET.get('device_id')
    start_date = request.GET.get('start_date')
    end_date = request.GET.get('end_date')
    condition = ""
    if device_id:
        condition += " AND device_id=%s " % device_id
    if start_date:
        condition += " AND DATE(enter_time)>='%s' " % str(start_date).replace('\n', '')
    if end_date:
        condition += " AND DATE(enter_time)<='%s' " % str(end_date).replace('\n', '')

    if is_new is not None:
        condition += " AND is_new=%s " % is_new

    return condition


def _get_time_conditions(request):
    device_id = request.GET.get('device_id')
    start_date = request.GET.get('start_date')
    end_date = request.GET.get('end_date')
    condition = ""
    if device_id:
        condition += " AND device_id=%s " % device_id
    if start_date:
        condition += " AND DATE(time)>='%s' " % str(start_date).replace('\n', '')
    if end_date:
        condition += " AND DATE(time)<='%s' " % str(end_date).replace('\n', '')

    return condition
