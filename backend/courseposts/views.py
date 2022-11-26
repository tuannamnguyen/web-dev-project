from django.shortcuts import render
from rest_framework import generics
from.serializers import *
from .models import *

# Create your views here.
class CoursePostsListView(generics.ListAPIView):
    serializer_class = CoursePostsSerializer

    def get_queryset(self):
        courses = self.kwargs['course_code']
        queryset = CoursePost.objects.filter(courses = courses)
        return queryset
