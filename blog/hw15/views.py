from datetime import timedelta
import logging
from django.http import HttpResponse
from django.utils import timezone
from hw15.models import Operators

logger = logging.getLogger(__name__)

def operators_index(request):
    value = request.GET.get("key")
    logger.info(value)

    #post_list = Operators.objects.all()
    #single_post = Operators.objects.get(id=1)
    #single_post = Operators.objects.filter(id=1).first()
    #post_list = Operators.objects.filter(title__contains="Test")

    #two_days_ago = timezone.now() - timedelta(days=2)
    #post_list = Operators.objects.filter(created_at__gt=two_days_ago)
    #post_list = Operators.objects.filter(title__contains="Test", created_at__gt=two_days_ago)
    return HttpResponse("AAA")