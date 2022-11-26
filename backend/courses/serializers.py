from rest_framework.serializers import ModelSerializer
from .models import *


class CourseSerializer(ModelSerializer):
    class Meta:
        model = Course
        fields = '__all__'

class CoursePostsSerializer(ModelSerializer):
    class Meta:
        model = CoursePost
        fields = '__all__'
