from blog.forms import RegisterForm
from django.shortcuts import render, redirect
import logging
from django.contrib.auth.models import User

logger = logging.getLogger(__name__)


def register(request):
    # if not request.user.is_staff:
    # raise HttpResponceForbidden
    if request.method == "POST":
        form = RegisterForm(request.POST)
        if form.is_valid():
            # Process validated data
            logger.info(form.cleaned_data)
            user = User(
                username=form.cleaned_data["email"],
                email=form.cleaned_data["email"],
                first_name=form.cleaned_data["first_name"],
                last_name=form.cleaned_data["last_name"],
            )
            user.set_password(form.cleaned_data["password"])
            user.save()
            return redirect("/")
    else:
        form = RegisterForm()
    return render(request, "register.html", {"form": form})
