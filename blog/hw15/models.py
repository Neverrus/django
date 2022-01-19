from django.conf import settings
from django.db import models


class Operators(models.Model):
    author = models.ForeignKey(
        settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name="operators"
    )
    title = models.CharField(max_length=200)
    image = models.ImageField(blank=True, null=True)
    slug = models.SlugField()
    text = models.TextField()
    created_at = models.DateTimeField(
        auto_now_add=True, db_index=True
    )