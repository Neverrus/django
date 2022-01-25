from django import forms
from django.conf import settings

class PostCreate(forms.Form):
    author = forms.CharField(max_length=200)
    title = forms.CharField(max_length=200)
    slug = forms.SlugField()
    text = forms.CharField()
