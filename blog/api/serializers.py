from rest_framework import serializers
from posts.models import Post
from homework.models import Message

class PostModelSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Post
        fields = ["title", "image", "text", "created_at"]

class MessageModelSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Message
        fields = ["title", "image", "text", "created_at"]

