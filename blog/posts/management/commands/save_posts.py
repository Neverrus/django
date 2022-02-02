import logging
from django.core.management.base import BaseCommand
import csv
from django.conf import settings
from posts.models import Post
from django.contrib.auth.models import User

logger = logging.getLogger(__name__)

class Command(BaseCommand):
    help = "Print Posts"

    #def handle(self, *args, **options):
        #for post in  Post.objects.all():
            #logger.info(post)
            #logger.info(f"Post #{post.id} - {post.title}")

    def handle(self, *args, **options):
        with open(settings.BASE_DIR / "posts.csv", "r") as file:
            reader = csv.reader(file)
            for row in reader:
                user, _ = User.objects.get_or_create(username=row[0])
                Post.objects.create(
                    author=user,
                    title=row[1],
                    image=row[2],
                    slug=row[3],
                    text=row[4]
                )

