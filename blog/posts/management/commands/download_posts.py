import csv
from pathlib import Path
import requests
from django.conf import settings
from django.contrib.auth.models import User
from django.core.management import BaseCommand
from posts.models import Post


class Command(BaseCommand):
    help = "Download CSV and save it to DB"

    def handle(self, *args, **options):
        def load_file(link, name_in_system):
            filename = Path(name_in_system)
            url = link
            response = requests.get(url)
            filename.write_bytes(response.content)

        load_file('https://raw.githubusercontent.com/weibak/django/master/blog/posts.csv', 'load_csv_posts_file.csv')

        with open(settings.BASE_DIR / "load_csv_posts_file.csv", "r") as file:
            reader = csv.reader(file)
            for row in reader:
                user = User.objects.filter(username=row[0]).first()
                Post.objects.create(
                    author=user,
                    title=row[1],
                    image=row[2],
                    slug=row[3],
                    text=row[4]
                )