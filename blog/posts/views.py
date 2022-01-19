import logging

from django.contrib.auth.models import User
from django.http import HttpResponse
from posts.models import Post
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
