from django.shortcuts import render
from rest_framework import viewsets
from .models import *
from .serializers import *


class CoursesViewSet(viewsets.ModelViewSet):
    queryset = Courses.objects.all()
    serializer_class = CoursesSerializer
