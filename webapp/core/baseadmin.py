# -*- coding:utf-8 -*-

from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator

from webapp.core.basetemplateView import BaseTemplateView

class BaseAdminView(BaseTemplateView):    
    def __init__(self, **kwargs):
        super(BaseAdminView, self).__init__(**kwargs)
      
    @method_decorator(login_required(login_url="/login/"))
    def dispatch(self, *args, **kwargs):
        return super(BaseAdminView, self).dispatch(*args, **kwargs) 

