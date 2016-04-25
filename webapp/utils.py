# -*- coding:utf-8 -*-

'''
这个通用的自定义功能页面
'''
from django.conf.urls import patterns, url
import importlib
from webapp.models import Menu

def register_views(queryset, urlpatterns=None):
    """
    @param queryset  queryset
    return urlpatterns
    
    format         url(r'^login/', user.LoginUserViewt, name='loginurl'),   
    """
    if queryset is None:
        return urlpatterns

    for view_name in queryset:
        str_namespace = str(view_name.namespace)
        str_viewnames = str(view_name.viewname)
        str_url = str(view_name.url)
        str_urlname = str(view_name.url_name)
        if str_namespace == '' or str_viewnames == '' or str_url == '' or str_urlname == '':
            continue

        if urlpatterns:
            urlpatterns  += patterns('%s' % str_namespace,
                    url(r'^(?i)%s/$' % str_url, '%s' % str_viewnames,  name='%s' % str_urlname),
                    )
        else:
            urlpatterns = patterns('%s' % namespace,
                    url(r'^(?i)%s/$' % str_url, '%s' % str_viewnames,  name='%s' % str_urlname),
                    )

    return urlpatterns

