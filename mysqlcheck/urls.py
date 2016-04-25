from django.conf.urls import patterns, include, url

from django.conf import settings
from webapp.views import Home


urlpatterns = patterns('',
    url(r'^$',Home, name='systemurl'),
    url(r'^mysqlcheck/',include('webapp.urls' )),

    #static
    url(r'^static/(?P<path>.*)$', 'django.views.static.serve', { 'document_root': settings.STATIC_ROOT,}),
)