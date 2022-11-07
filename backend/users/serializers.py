from .models import Students, Teachers, TeachersPerCourse
from rest_framework import serializers


class StudentsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Students
        fields = '__all__'


class TeachersSerializer(serializers.ModelSerializer):
    class Meta:
        model = Teachers
        fields = '__all__'


class TeachersPerCourseSerializer(serializers.ModelSerializer):
    class Meta:
        model = TeachersPerCourse
        fields = '__all__'
