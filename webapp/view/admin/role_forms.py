from django import forms
from django.contrib import auth
from django.contrib.auth import get_user_model
from webapp.models import RoleList

class RoleListForm(forms.ModelForm):
    class Meta:
        model = RoleList
        fields = ('name','permission')
        widgets = {
            'name' : forms.TextInput(attrs={'class':'form-control'}),
            'permission' : forms.SelectMultiple(attrs={'class':'form-control','size':'10','multiple':'multiple'}),
            #'permission' : forms.CheckboxSelectMultiple(choices=[(x.id,x.name) for x in PermissionList.objects.all()]),
        }

    def __init__(self,*args,**kwargs):
        super(RoleListForm,self).__init__(*args,**kwargs)
        self.fields['name'].label=u'名 称'
        self.fields['name'].error_messages={'required':u'请输入名称'}
        self.fields['permission'].label=u'URL'
        self.fields['permission'].required=False
