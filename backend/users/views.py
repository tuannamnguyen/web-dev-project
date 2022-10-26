from msilib.schema import ListView
from django.shortcuts import render
from rest_framework import viewsets, permissions
from users.serializers import StudentsSerializer, TeachersSerializer
from rest_framework import generics
from rest_framework.permissions import IsAdminUser
from .models import Students, Teachers
# Create your views here.

class StudentsList(generics.ListCreateAPIView):
    queryset = Students.objects.all()
    serializer_class = StudentsSerializer
    # permission_classes = [IsAdminUser]
    # list(get) xem ds sv
    # list(post) them sv
    #detail xem chi tiet 1 sv
    # ....(put) chinh sua thong tin
    
    # def get_object(self):
    #     return super().get_object()

class StudentsDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Students
    serializer_class = StudentsSerializer

class TeachersList(generics.ListCreateAPIView):
    queryset = Teachers.objects.all()
    serializer_class = TeachersSerializer

class TeachersDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Teachers
    serializer_class = TeachersSerializer
    