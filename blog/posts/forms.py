from django import forms
from django.conf import settings

class PostCreate(forms.Form):
    title = forms.CharField(max_length=200)
    image = forms.ImageField(required=False)
    slug = forms.SlugField()
    text = forms.CharField(max_length=2000, widget=forms.Textarea, help_text='Введите ваш текст')

