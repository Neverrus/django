import logging
from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.http import HttpResponse
from shop.models import Product
from posts.forms import PostCreate

logger = logging.getLogger(__name__)

def product_list(request):
    if request.user.is_anonymous:
        return redirect("admin:index")
    products = Product.objects.order_by("-id")
    return render(request, "products/list.html", {"products": products})