import logging
from django.core.management.base import BaseCommand
import csv
from django.conf import settings
from posts.models import Post

logger = logging.getLogger(__name__)

class Command(BaseCommand):
    help = "Print Posts"

    #def handle(self, *args, **options):
        #for post in  Post.objects.all():
            #logger.info(post)
            #logger.info(f"Post #{post.id} - {post.title}")

    def handle(self, *args, **options):
        with open(settings.BASE_DIR / "posts.csv", "w") as file:
            writer = csv.writer(file)
            for post in Post.objects.all():
                writer.writerow([post.id, post.title])

