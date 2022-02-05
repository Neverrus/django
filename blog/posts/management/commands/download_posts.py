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

        load_file('')

        with open(settings.BASE_DIR / "", "r") as file:
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