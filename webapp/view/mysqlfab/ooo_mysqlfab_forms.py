from django import forms
from django.contrib import auth
from django.contrib.auth import get_user_model
from webapp.models import Server, ServersMysql

class MysqlFabListForm(forms.ModelForm):
    class Meta:
        model = Server
        fields = ('hostname','ip','user','pwd','port','about','summary','is_delete')
        widgets = {
            'hostname' : forms.TextInput(attrs={'class':'form-control'}),
            'ip' : forms.TextInput(attrs={'class':'form-control'}),
            'user' : forms.TextInput(attrs={'class':'form-control'}),
            'pwd' : forms.TextInput(attrs={'class':'form-control'}),
            'port' : forms.TextInput(attrs={'class':'form-control'}),
            'about' : forms.TextInput(attrs={'class':'form-control'}),
            'summary' : forms.TextInput(attrs={'class':'form-control'}),
            'is_delete' : forms.Select(choices=((1, u'启用'),(0, u'禁用')),attrs={'class':'form-control'}),
        }

    def __init__(self,*args,**kwargs):
        super(LinuxHostSettingListForm,self).__init__(*args,**kwargs)
        self.fields['hostname'].label=u'主 机'
        self.fields['hostname'].error_messages={'required':u'请输入主机名称'}
        self.fields['ip'].label=u'主机IP'
        self.fields['ip'].error_messages={'required':u'请输入主机IP'}
        self.fields['user'].label=u'登陆名'
        self.fields['user'].error_messages={'required':u'请输入登陆名'}
        self.fields['pwd'].label=u'密码'
        self.fields['pwd'].error_messages={'required':u'请输入密码'}
        self.fields['port'].label=u'端口'
        self.fields['port'].error_messages={'required':u'请输入端口'}
        self.fields['about'].label=u'介绍'
        self.fields['summary'].label=u'描述'  
        self.fields['is_delete'].label=u'是否使用'
        self.fields['is_delete'].error_messages={'required':u'请选择是否'}



