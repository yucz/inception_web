#!/usr/bin/env python
# -*- coding:utf-8 -*-
#update:2014-11-12 by 250305240@qq.com

from django.core.urlresolvers import reverse
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render_to_response,RequestContext
from django.contrib.auth.decorators import login_required
from webapp.common.CommonPaginator import SelfPaginator
from webapp.view.admin.permission import PermissionVerify
from webapp.view.mysqlfab.mysqlfab_forms import MysqlfabMasterForm
from webapp.models import MysqlfabMaster


@login_required
@PermissionVerify()
def ListMysqlFab(request):
    mList = MysqlfabMaster.objects.all()

    #分页功能
    lst = SelfPaginator(request,mList, 20)

    kwvars = {
        'lPage':lst,
        'request':request,
    }
    return render_to_response('mysqlfab/mysqlfab.list.html',kwvars,RequestContext(request))

@login_required
@PermissionVerify()
def AddMysqlFab(request):
    if request.method == "POST":
        form = MysqlfabMasterForm(request.POST)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect(reverse('listmysqlfaburl'))
    else:
        form = MysqlfabMasterForm()

    kwvars = {
        'form':form,
        'request':request,
    }
    return render_to_response('mysqlfab/mysqlfab.add.html',kwvars,RequestContext(request))

@login_required
@PermissionVerify()
def EditMysqlFab(request,ID):
    iModels = MysqlfabMaster.objects.get(id=ID)
    if request.method == "POST":
        form = MysqlfabMasterForm(request.POST,instance=iModels)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect(reverse('listmysqlfaburl'))
    else:
        form = MysqlfabMasterForm(instance=iModels)
    kwvars = {
        'ID':ID,
        'form':form,
        'request':request,
    }
    return render_to_response('mysqlfab/mysqlfab.edit.html',kwvars,RequestContext(request))

@login_required
@PermissionVerify()
def DeleteMysqlFab(request,ID):
    MysqlfabMaster.objects.filter(id = ID).delete()
    return HttpResponseRedirect(reverse('listmysqlfaburl'))

