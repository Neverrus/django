from django.conf import settings
from django.db import models


class Message(models.Model):
    author = models.ForeignKey(
        settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name="messages"
    )

    title = models.CharField(max_length=200)
    image = models.ImageField(blank=True, null=True)
    text = models.TextField()
    created_at = models.DateTimeField(
        auto_now_add=True, db_index=True
    )