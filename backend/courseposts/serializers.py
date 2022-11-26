from rest_framework.serializers import ModelSerializer
from .models import *

class CoursePostsSerializer(ModelSerializer):
    class Meta:
        model = CoursePost
        fields = '__all__'