# Create your views here.
import json
import logging
import hashlib

from django.http import HttpResponse, HttpResponseBadRequest, HttpResponseNotAllowed, HttpResponseNotFound
from django.views.decorators.csrf import csrf_exempt

from config.config import HEADER_TOKEN, SALT, HEADER_UUID, Device_Status
from smart_device.models import Device
from django.core.exceptions import ObjectDoesNotExist


logger = logging.getLogger('smart_device')


def test(request):
    logger.debug('into test')
    return HttpResponse('server test success!', content_type="application/json")


def _is_token_valid(client_token, uuid):
    md5 = hashlib.md5()
    md5.update(uuid + SALT)
    server_token = md5.hexdigest()
    print client_token
    print server_token
    return client_token == server_token


@csrf_exempt
def device(request):
    req_token = request.META.get(HEADER_TOKEN)
    logger.debug('req token=' + req_token)
    req_uuid = request.META.get(HEADER_UUID)
    logger.debug('req uuid=' + req_uuid)

    if req_token is None or req_uuid is None:
        logger.warn('empty token data: %s' % req_token)
        return HttpResponseBadRequest(json.dumps({'result': 'empty token data'}),
                                      content_type="application/json")

    if not _is_token_valid(req_token, req_uuid):
        logger.warn('invalid token data: %s' % req_token)
        return HttpResponse("{'result': 'invalid token data'}", status=401, content_type="application/json")

    if request.method == 'POST':
        logger.debug('device post')
        req_data = request.body
        if req_data is None or req_data is '':
            logger.warn('invalid request data: %s' % req_data)
            return HttpResponseBadRequest(json.dumps({'result': 'invalid request data'}),
                                          content_type="application/json")

        req_json = json.loads(req_data)
        logger.debug(req_json)

        try:
            device_data = Device.objects.get(uuid=req_uuid)
            # modify device
            if req_json.get('name') is not None:
                device_data.name = req_json.get('name')

            if req_json.get('identifier') is not None:
                device_data.identifier = req_json.get('identifier')

            if req_json.get('description') is not None:
                device_data.description = req_json.get('description')

            device_data.status = Device_Status.NORMAL
            device_data.save()
        except ObjectDoesNotExist:
            # add device
            device_data = Device(
                uuid=req_uuid,
                name=req_json.get('name'),
                identifier=req_json.get('identifier'),
                description=req_json.get('description'),
                status=Device_Status.NORMAL
            )
            device_data.save()

    elif request.method == 'GET':
        # search for device
        logger.debug('device get')
        try:
            Device.objects.get(uuid=req_uuid)
        except ObjectDoesNotExist:
            return HttpResponseNotFound(json.dumps({'result': 'not found'}), content_type="application/json")

    elif request.method == 'DELETE':
        logger.debug('device delete')
        try:
            device_data = Device.objects.get(uuid=req_uuid)
            device_data.status = Device_Status.DELETED
            device_data.save()
        except ObjectDoesNotExist:
            return HttpResponseNotFound(json.dumps({'result': 'not found'}), content_type="application/json")

    else:
        logger.warn('invalid request type')
        return HttpResponseNotAllowed(json.dumps({'result': 'invalid request type'}),
                                      content_type="application/json")
    return HttpResponse(json.dumps({'result': 'success'}), content_type="application/json")


@csrf_exempt
def data(request):
    return HttpResponse('server data success!', content_type="application/json")