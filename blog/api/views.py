from django.shortcuts import render

from rest_framework import viewsets


from api.serializers import PostModelSerializer, MessageModelSerializer
from posts.models import Post
from homework.models import Message

class PostViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows posts to be viewed.
    """

    queryset = Post.objects.all().order_by("-created_at")
    serializer_class = PostModelSerializer
    permission_classes = []

    #def perform_create(self, serializer):
        #serializer.validated_data["author"] = self.request.user
        #serializer.save()
    def perform_create(self, serializer):
        serializer.save(author=self.request.user)

class MessageViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows messages to be viewed.
    """

    queryset = Message.objects.all().order_by("-created_at")
    serializer_class = MessageModelSerializer
    permission_classes = []

    #def perform_create(self, serializer):
        #serializer.validated_data["author"] = self.request.user
        #serializer.save()
    def perform_create(self, serializer):
        serializer.save(author=self.request.user)
