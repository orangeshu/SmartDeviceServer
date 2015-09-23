#!/usr/bin/env python
# coding: utf-8

import os
import sys

from django.core.handlers.wsgi import WSGIHandler


# 将系统的编码设置为UTF8
reload(sys)
sys.setdefaultencoding('utf-8')

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "smart_device.production_settings")

application = WSGIHandler()