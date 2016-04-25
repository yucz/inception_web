#!/usr/bin/env python
# -*- coding:utf-8 -*-
#update:2016-03-12 by 250305240@qq.com

from django.core.urlresolvers import reverse
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render_to_response,RequestContext
from django.contrib.auth.decorators import login_required
from webapp.common.CommonPaginator import SelfPaginator
from webapp.common.Pub import *
#from webapp.common.Pub import GetPostData, GetGetData
from webapp.view.admin.permission import PermissionVerify
#from webapp.view.mysqlfab.mysqlfab_forms import MysqlFabListForm        #del
from webapp.models import mysqlfab_master, mysqlfab_detail

@login_required
@PermissionVerify()
def ListMysqlFab(request):
    #mList = Server.objects.all()
    mList = ExecuteSql("""SELECT a.*,b.sql
                        FROM mysqlfab_master a
                        LEFT JOIN mysqlfab_detail b
                        on a.id=b.master_id""")
    #分页功能
    lst = SelfPaginator(request,mList, 20)

    kwvars = {
        'lPage':lst,
        'request':request,
    }

    return render_to_response('Mysqlfab/mysqlfab.list.html',kwvars,RequestContext(request))

@login_required
@PermissionVerify()
def AddMysqlFab(request):
    if request.method == "POST":
        v_mysqlcheck_master=mysqlfab_master()
        v_mysqlcheck_detail=mysqlfab_detail()

        v_mysqlcheck_master.db_id=self.GetPostData("db_id",0)
        v_mysqlcheck_master.user_id=self.GetPostData("user_id",0)
        v_mysqlcheck_master.username=self.GetPostData("username","")
        v_mysqlcheck_master.subject=self.GetPostData("subject","")
        v_mysqlcheck_master.self_project=self.GetPostData("self_project","")
        v_mysqlcheck_master.project_id=self.GetPostData("project_id","")
        v_mysqlcheck_master.project=self.GetPostData("project","")
        v_mysqlcheck_master.status=self.GetPostData("status","")
        v_mysqlcheck_master.save()

        v_mysqlcheck_detail.master_id=self.GetPostData("master_id",0)
        v_mysqlcheck_detail.sql=self.GetPostData("sql","")
        v_mysqlcheck_detail.descs=self.GetPostData("descs","")
        v_mysqlcheck_detail.gmt_create=self.GetPostData("gmt_create","")
        mysqlcheck_detail.save() 

        return HttpResponseRedirect(reverse('listmysqlfaburl'))


    kwvars = { }

    return render_to_response('Mysqlfab/mysqlfab.add.html',kwvars,RequestContext(request))

@login_required
@PermissionVerify()
def EditMysqlFab(request,ID):
    #iLinuxhost = Server.objects.get(id=ID)

    #if request.method == "POST":
    #    form = MysqlFabListForm(request.POST,instance=iLinuxhost)
    #    if form.is_valid():
    #        form.save()
    #        return HttpResponseRedirect(reverse('listmysqlfaburl'))
    #else:
    #    form = MysqlFabListForm(instance=iLinuxhost)

    kwvars = {
        #'ID':ID,
        #'form':form,
        #'request':request,
    }

    return render_to_response('Mysqlfab/mysqlfab.edit.html',kwvars,RequestContext(request))

@login_required
@PermissionVerify()
def DeleteMysqlFab(request,ID):
    Server.objects.filter(id = ID).delete()

    return HttpResponseRedirect(reverse('listlinuxhosturl'))



