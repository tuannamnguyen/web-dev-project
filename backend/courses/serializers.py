from dataclasses import fields
from rest_framework import serializers
from .models import * 

class CoursesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Courses
        fields = ['course_id', 'course_description', 'course_abstract', 'course_required_textbook']
        