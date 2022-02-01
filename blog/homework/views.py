import logging
from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.http import HttpResponse
from homework.models import Message
from homework.forms import MessageCreate

logger = logging.getLogger(__name__)

def create_message(request):
    if request.method == "POST":
        form = MessageCreate(request.POST)
        if form.is_valid():
            # Process validated data
            logger.info(form.cleaned_data)
            message = Message(
                author=request.user,
                title=form.cleaned_data['title'],
                image=form.cleaned_data['image'],
                text=form.cleaned_data['text'])
            message.save()
            return redirect("/")
    else:
        form = MessageCreate()
    return render(request, "/", {"form": form})