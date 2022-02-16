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
        def load_file(link, file_name):
            filename = Path(file_name)
            url = link
            response = requests.get(url)
            filename.write_bytes(response.content)

        load_file(
            "https://raw.githubusercontent.com/Neverrus/django/master/blog/CSV_folder/posts2.csv",
            "posts2.csv",
        )

        with open(settings.BASE_DIR / "posts2.csv", "r") as file:
            reader = csv.reader(file)
            for row in reader:
                user, _ = User.objects.get_or_create(username=row[0])
                Post.objects.create(
                    author=user, title=row[1], image=row[2], slug=row[3], text=row[4]
                )
