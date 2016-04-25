# -*- coding:utf-8 -*-

from django.contrib.auth.decorators import login_required
from webapp.view.admin.permission import PermissionVerify
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render_to_response,RequestContext

@login_required
@PermissionVerify()
def Home(request, *args, **kwargs):
    '''系统设置'''
    kwvars = {
        'cur_menu_parent':'systems',
    }
    return render_to_response('home.html',kwvars,RequestContext(request))

@login_required
@PermissionVerify()
def Mysqlfab(request, *args, **kwargs):
    '''mysql发布'''
    kwvars = {
        'cur_menu_parent':'mysqlfab',
    }
    return render_to_response('mysqlfab.html',kwvars,RequestContext(request))
