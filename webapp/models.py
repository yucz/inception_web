#!/usr/bin/env python
# -*- coding:utf-8 -*-
#update:2014-11-12 by 250305240@qq.com
import sys  
reload(sys)  
sys.setdefaultencoding('utf8')  

import datetime
from django.contrib.auth.models import BaseUserManager, AbstractBaseUser
from django.db import models


################# system manager ###############
class Menu(models.Model):
    id = models.IntegerField(primary_key=True)
    text = models.CharField(max_length=100)
    is_root = models.IntegerField()
    parent_id = models.IntegerField()
    namespace = models.CharField(max_length=100)
    viewname = models.CharField(max_length=100)
    kwargs = models.CharField(max_length=100)
    url = models.CharField(max_length=255)
    url_name = models.CharField(max_length=100)
    is_active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'superdba_menu'

    def __unicode__(self):
        return '%s(%s)' %(self.name,self.url)

class PermissionList(models.Model):
    name = models.CharField(max_length=64)
    url = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'superdba_permissionlist'

    def __unicode__(self):
        return '%s(%s)' %(self.name,self.url)
                             
class RoleList(models.Model):
    name = models.CharField(max_length=64)
    permission = models.ManyToManyField(PermissionList,null=True,blank=True)

    class Meta:
        managed = False
        db_table = 'superdba_rolelist'

    def __unicode__(self):
        return self.name

class UserManager(BaseUserManager):
    def create_user(self,email,username,password=None):
        if not email:
            raise ValueError('Users must have an email address')

        user = self.model(
            email = self.normalize_email(email),
            username = username,
        )

        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self,email,username,password):
        user = self.create_user(email,
            username = username,
            password = password,
        )

        user.is_active = True
        user.is_superuser = True
        user.save(using=self._db)
        return user

class User(AbstractBaseUser):
    username = models.CharField(max_length=40, unique=True, db_index=True)
    email = models.EmailField(max_length=255)
    is_active = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)
    nickname = models.CharField(max_length=64, null=True)
    sex = models.CharField(max_length=2, null=True)
    role = models.ForeignKey(RoleList,null=True,blank=True)

    class Meta:
        managed = False
        db_table = 'superdba_user'

    objects = UserManager()
    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['email']

    def has_perm(self,perm,obj=None):
        if self.is_active and self.is_superuser:
            return True

# ############  superdba start #####################

class DbInfo(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    database_id = models.SmallIntegerField()
    single_name = models.CharField(unique=True, max_length=128)
    db_url = models.CharField(max_length=50)
    dbip = models.CharField(max_length=20)
    dbport = models.IntegerField()
    db_user = models.CharField(max_length=40)
    db_user_pwd = models.CharField(max_length=256)
    db_version = models.CharField(max_length=128)
    db_role = models.CharField(max_length=40)
    mysql_parent_id = models.SmallIntegerField(blank=True, null=True)
    db_scenario = models.CharField(max_length=8)
    status = models.CharField(max_length=10, blank=True, null=True)
    descs = models.CharField(max_length=255)
    project_id = models.SmallIntegerField()
    gmt_create = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'db_info'

class MysqlfabDetail(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    master = models.ForeignKey('MysqlfabMaster', models.DO_NOTHING)
    sql = models.TextField(blank=True, null=True)
    descs = models.CharField(max_length=900)
    gmt_create = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'mysqlfab_detail'


class MysqlfabMaster(models.Model):
    id = models.SmallIntegerField(primary_key=True)
    db_id = models.SmallIntegerField()
    user_id = models.IntegerField()
    username = models.CharField(max_length=40)
    subject = models.CharField(max_length=100)
    self_project = models.CharField(max_length=1)
    project_id = models.SmallIntegerField()
    project = models.CharField(max_length=40)
    status = models.CharField(max_length=30)
    gmt_create = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'mysqlfab_master'



##############  superdba end  #####################