import logging
from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.http import HttpResponse
from posts.models import Post
from posts.forms import PostCreate

logger = logging.getLogger(__name__)


def posts_index(request):
    result = ""
    #user = User.objects.get(id=request.GET.get("user_id", 2))
    #for post in Post.objects.filter(author=user).order_by("id"):
    user = User.objects.get(username=request.GET.get("author", "django"))
    author_name = request.GET.get("author", "django")
    for post in Post.objects.filter(author__username=author_name).order_by("-id"):
        result += f"<div style='border: 1px solid black'>"
        result += f"<h1>{post.title}</h1>"
        result += f"<div>{post.text}</div>"
        #result += f"<div><img ='{post.image.url}' width='200'></div>"
        result += f"</div>"
    return HttpResponse(result)
    #posts = Post.objects.all()
    #return HttpResponse([", ".join([x.slug for x in posts])])

def create_post(request):
    if request.user.is_authenticated:
        if request.method == "POST":
            form = PostCreate(request.POST)
            if form.is_valid():
                # Process validated data
                logger.info(form.cleaned_data)
                post = Post(
                    author=request.user,
                    title=form.cleaned_data['title'],
                    image=form.cleaned_data['image'],
                    slug=form.cleaned_data['slug'],
                    text=form.cleaned_data['text'])
                post.save()
                return redirect("/")
        else:
            form = PostCreate()
        return render(request, "posts/create.html", {"form": form})
    return HttpResponse("You don't authenticated!")

def post_list(request):
    if request.user.is_anonymous:
        return redirect("admin:index")
    posts = Post.objects.filter(author=request.user).order_by("-id")
    return render(request, "posts/list.html", {"posts": posts})