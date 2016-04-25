#!/usr/bin/env python
# -*- coding:utf-8 -*-
#update:2014-11-12 by 250305240@qq.com

from django import forms
from django.contrib import auth
from django.contrib.auth import get_user_model
from webapp.models import MysqlfabMaster

class MysqlfabMasterForm(forms.ModelForm):
    class Meta:
        model = MysqlfabMaster
        fields = ('id','db_id','user_id','username','subject','self_project','project_id','project','status','gmt_create')
        widgets = {
		'id': forms.TextInput(attrs={'class':'form-control'}),
		'db_id': forms.TextInput(attrs={'class':'form-control'}),
		'user_id': forms.TextInput(attrs={'class':'form-control'}),
		'username': forms.TextInput(attrs={'class':'form-control'}),
		'subject': forms.TextInput(attrs={'class':'form-control'}),
		'self_project': forms.Select(choices=((True, u'启用'),(False, u'禁用')),attrs={'class':'form-control'}),
		'project_id': forms.TextInput(attrs={'class':'form-control'}),
		'project': forms.TextInput(attrs={'class':'form-control'}),
		'status': forms.TextInput(attrs={'class':'form-control'}),
		'gmt_create': forms.DateTimeInput(attrs={'class':'form-control'})
		}

    def __init__(self,*args,**kwargs):
        super(MysqlfabMasterForm,self).__init__(*args,**kwargs)
        self.fields['id'].label=u''
        self.fields['id'].error_messages={'required':u'请输入'}
        self.fields['db_id'].label=u'关联到db_info的id'
        self.fields['db_id'].error_messages={'required':u'请输入关联到db_info的id'}
        self.fields['user_id'].label=u'发布者id'
        self.fields['user_id'].error_messages={'required':u'请输入发布者id'}
        self.fields['username'].label=u'发布者名称'
        self.fields['username'].error_messages={'required':u'请输入发布者名称'}
        self.fields['subject'].label=u'主题'
        self.fields['subject'].error_messages={'required':u'请输入主题'}
        self.fields['self_project'].label=u'是否发布者所属的项目数据库'
        self.fields['self_project'].error_messages={'required':u'请输入是否发布者所属的项目数据库'}
        self.fields['project_id'].label=u'哪个项目的需求: 项目id'
        self.fields['project_id'].error_messages={'required':u'请输入哪个项目的需求: 项目id'}
        self.fields['project'].label=u'哪个项目的需求: 项目名称'
        self.fields['project'].error_messages={'required':u'请输入哪个项目的需求: 项目名称'}
        self.fields['status'].label=u'推送状态'
        self.fields['status'].error_messages={'required':u'请输入推送状态'}
        self.fields['gmt_create'].label=u'创建时间'
        self.fields['gmt_create'].error_messages={'required':u'请输入创建时间'}
