from django.shortcuts import render
from rest_framework import viewsets
from users.serializers import *
from .models import Students, Teachers
# Create your views here.

class StudentsViewSet(viewsets.ModelViewSet):
    queryset = Students.objects.all()
    serializer_class = StudentsSerializer
   
    def get_queryset(self):
        return super().get_queryset()


class TeachersViewSet(viewsets.ModelViewSet):
    queryset = Teachers.objects.all()
    serializer_class = TeachersSerializer
    
    def get_queryset(self):
        return super().get_queryset()


class TeachersPerCourseViewSet(viewsets.ModelViewSet):
    queryset = TeachersPerCourse.objects.all()
    serializer_class = TeachersPerCourseSerializer

    def get_queryset(self):
        return super().get_queryset()