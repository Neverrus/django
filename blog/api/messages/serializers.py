from rest_framework import serializers
from homework.models import Message


class MessageModelSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Message
        fields = ["title", "image", "text", "created_at"]
