from django.conf.urls import patterns, url  # pylint: disable-msg=R0801
from console import views

urlpatterns = patterns('',
    # login function
    url(r'^auth_login$', views.auth_login, name='auth_login'),
    url(r'^logout$', views.logout, name='logout'),

    url(r'^index$', views.index, name='index'),
    url(r'^location$', views.location, name='location'),
    url(r'^rfid$', views.rfid, name='rfid'),
    url(r'^stats$', views.stats, name='stats'),
    url(r'^video$', views.video, name='video'),

    url(r'^ajax_device_list$', views.ajax_device_list, name='ajax_device_list'),
    url(r'^ajax_device_info/(?P<device_id>\d+)/$', views.ajax_device_info, name='ajax_device_info'),

)
