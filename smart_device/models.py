#coding=utf-8
from django.contrib.auth.models import AbstractUser
from django.db import models


class ValueType(models.Model):
    name = models.CharField(max_length=64)

    class Meta:
        db_table = "value_type"


class SensorType(models.Model):
    name = models.CharField(max_length=64)

    class Meta:
        db_table = "sensor_type"


class Config(models.Model):
    sensor_type = models.ForeignKey(SensorType)
    value_type = models.ForeignKey(ValueType)
    data = models.CharField(max_length=64)
    update_time = models.TimeField()
    is_notified = models.BooleanField()

    class Meta:
        db_table = "config"


class Device(models.Model):
    uuid = models.CharField(max_length=64)
    name = models.CharField(max_length=255)
    identifier = models.CharField(max_length=64)
    description = models.CharField(max_length=255)
    status = models.SmallIntegerField()
    config = models.ManyToManyField(Config)

    def __unicode__(self):
        return self.guid

    class Meta:
        db_table = "device"


class DeviceData(models.Model):
    device = models.ForeignKey(Device)
    data = models.CharField(max_length=255)
    update_time = models.TimeField()

    class Meta:
        db_table = "device_data"