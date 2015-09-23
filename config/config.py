#coding=utf-8
__author__ = 'qwy'

HEADER_UUID = 'HTTP_UUID'
HEADER_TOKEN = 'HTTP_TOKEN'

SALT = '(*)smart_device(980)'


# mapping from web pull-down menu value to real time span.
class Device_Status(object):
    NORMAL = 0
    ABNORMAL = 1
    DELETED = 2
