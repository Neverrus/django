from rest_framework import viewsets
from api.messages.serializers import MessageModelSerializer
from homework.models import Message


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