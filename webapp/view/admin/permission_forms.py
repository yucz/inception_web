#!/usr/bin/env python
# -*- coding:utf-8 -*-
#update:2014-11-12 by 250305240@qq.com

from django import forms
from django.contrib import auth
from django.contrib.auth import get_user_model
from webapp.models import PermissionList


class PermissionListForm(forms.ModelForm):
    class Meta:
        model = PermissionList
        fields = ('name','url')
        
        widgets = {
            'name' : forms.TextInput(attrs={'class':'form-control'}),
            'url' : forms.TextInput(attrs={'class':'form-control'}),
        }

    def __init__(self,*args,**kwargs):
        super(PermissionListForm,self).__init__(*args,**kwargs)
        self.fields['name'].label=u'名 称'
        self.fields['name'].error_messages={'required':u'请输入名称'}
        self.fields['url'].label=u'URL'
        self.fields['url'].error_messages={'required':u'请输入URL'}
