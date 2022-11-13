from rest_framework import viewsets
from .models import *
from .serializers import *


class CoursesViewSet(viewsets.ModelViewSet):
    serializer_class = CoursesSerializer

    def get_queryset(self):
        return Courses.objects.all()


class EnrollmentsViewSet(viewsets.ModelViewSet):
    serializer_class = EnrollmentsSerializer

    def get_queryset(self):
        return Enrollments.objects.all()


class ClassesViewSet(viewsets.ModelViewSet):
    serializer_class = ClassesSerializer

    def get_queryset(self):
        return Classes.objects.all()


class AttendanceViewSet(viewsets.ModelViewSet):
    serializer_class = AttendanceSerializer

    def get_queryset(self):
        return Attendance.objects.all()
