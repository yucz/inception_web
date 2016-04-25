from django import forms
from django.contrib import auth
from django.contrib.auth import get_user_model
from webapp.models import Menu

class MenuListForm(forms.ModelForm):
    class Meta:
        model = Menu
        fields = ('id','text','is_root','parent_id','namespace','viewname','kwargs','url','url_name','is_active')

        widgets = {
            'text' : forms.TextInput(attrs={'class':'form-control'}),
            'is_root' : forms.Select(choices=((u'1', u'是'),(u'0', u'否')),attrs={'class':'form-control'}),
            'parent_id' : forms.TextInput(attrs={'class':'form-control'}),
            'namespace' : forms.TextInput(attrs={'class':'form-control'}),
            'viewname' : forms.TextInput(attrs={'class':'form-control'}),
            'kwargs' : forms.TextInput(attrs={'class':'form-control'}),
            'url' : forms.TextInput(attrs={'class':'form-control'}),
            'url_name' : forms.TextInput(attrs={'class':'form-control'}),
            'is_active' : forms.Select(choices=((u'1', u'是'),(u'0', u'否')),attrs={'class':'form-control'}),
        }

    def __init__(self,*args,**kwargs):
        super(MenuListForm,self).__init__(*args,**kwargs)
        self.fields['text'].label=u'名 称'
        self.fields['text'].error_messages={'required':u'请输入名称'}
        self.fields['is_root'].label=u'是否根菜单'
        self.fields['is_root'].error_messages={'required':u'请选择是否'}
        self.fields['parent_id'].label=u'父菜单'
        self.fields['parent_id'].error_messages={'required':u'请选择父菜单'}
        self.fields['namespace'].label=u'类路径'
        self.fields['namespace'].error_messages={'required':u'请输入类路径'}
        self.fields['viewname'].label=u'方法名'
        self.fields['viewname'].error_messages={'required':u'请输入方法名'}
        self.fields['kwargs'].label=u'参数'
        self.fields['url'].label=u'url'
        self.fields['url'].error_messages={'required':u'请输入url'}
        self.fields['url_name'].label=u'url名称'
        self.fields['url_name'].error_messages={'required':u'请输入名称'}        
        self.fields['is_active'].label=u'是否启用'
        self.fields['is_active'].error_messages={'required':u'请选择是否'}
