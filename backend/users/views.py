from rest_framework import viewsets
from users.serializers import *
from .models import *
# Create your views here.

class StudentsViewSet(viewsets.ModelViewSet):
    serializer_class = StudentsSerializer
   
    def get_queryset(self):
        return Students.objects.all()


class TeachersViewSet(viewsets.ModelViewSet):
    serializer_class = TeachersSerializer
    
    def get_queryset(self):
        return Teachers.objects.all()


class TeachersPerCourseViewSet(viewsets.ModelViewSet):
    serializer_class = TeachersPerCourseSerializer

    def get_queryset(self):
        return TeachersPerCourse.objects.all()