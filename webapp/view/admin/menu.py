#!/usr/bin/env python
# -*- coding:utf-8 -*-
#update:2014-11-12 by 250305240@qq.com

from django.core.urlresolvers import reverse
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render_to_response,RequestContext
from django.contrib.auth.decorators import login_required
from webapp.common.CommonPaginator import SelfPaginator
from webapp.view.admin.permission import PermissionVerify
from webapp.view.admin.menu_forms import MenuListForm
from webapp.models import Menu

@login_required
@PermissionVerify()
def AddMenu(request):
    if request.method == "POST":
        form = MenuListForm(request.POST)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect(reverse('listmenuurl'))
    else:
        form = MenuListForm()

    kwvars = {
        'form':form,
        'request':request,
    }

    return render_to_response('UserManage/menu.add.html',kwvars,RequestContext(request))

@login_required
@PermissionVerify()
def ListMenu(request):
    mList = Menu.objects.all()

    #分页功能
    lst = SelfPaginator(request,mList, 20)

    kwvars = {
        'lPage':lst,
        'request':request,
    }

    return render_to_response('UserManage/menu.list.html',kwvars,RequestContext(request))

@login_required
@PermissionVerify()
def EditMenu(request,ID):
    iMenu = Menu.objects.get(id=ID)

    if request.method == "POST":
        form = MenuListForm(request.POST,instance=iMenu)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect(reverse('listmenuurl'))
    else:
        form = MenuListForm(instance=iMenu)

    kwvars = {
        'ID':ID,
        'form':form,
        'request':request,
    }

    return render_to_response('UserManage/menu.edit.html',kwvars,RequestContext(request))

@login_required
@PermissionVerify()
def DeleteMenu(request,ID):
    Menu.objects.filter(id = ID).delete()

    return HttpResponseRedirect(reverse('listmenuurl'))
