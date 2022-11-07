from rest_framework.serializers import ModelSerializer
from .models import *


class CoursesSerializer(ModelSerializer):
    class Meta:
        model = Courses
        fields = '__all__'


class EnrollmentsSerializer(ModelSerializer):
    class Meta:
        model = Enrollments
        fields = '__all__'


class ClassesSerializer(ModelSerializer):
    class Meta:
        model = Classes
        fields = '__all__'


class AttendanceSerializer(ModelSerializer):
    class Meta:
        model = Attendance
        fields = '__all__'
