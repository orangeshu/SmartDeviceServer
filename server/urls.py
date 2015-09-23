from django.conf.urls import patterns, url  # pylint: disable-msg=R0801
from server import views


urlpatterns = patterns('',
    url(r'^test$', views.test, name='test'),

    url(r'^device$', views.device, name='device'),

    url(r'^data$', views.data, name='data'),

)
