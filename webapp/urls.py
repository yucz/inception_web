#!/usr/bin/python
# -*- coding:utf-8 -*-

from django.conf.urls import patterns, url
from webapp.models import Menu
from webapp.utils import register_views

#全局导航
urlpatterns = patterns('webapp.view.admin',
    url(r'^login/', 'user.LoginUserView', name='loginurl'),
    url(r'^logout/$', 'user.LogoutUser', name='logouturl'),

    url(r'^user/changepwd/$', 'user.ChangePassword', name='changepasswordurl'),
    url(r'^user/resetpwd/(?P<ID>\d+)/$', 'user.ResetPassword', name='resetpasswordurl'),

    url(r'^permission/deny/$', 'permission.NoPermission', name='permissiondenyurl'),
)

#后台管理（用户、权限，导航菜单等)
queryset = Menu.objects.filter(is_active=1)
urlpatterns = register_views(queryset, urlpatterns)

