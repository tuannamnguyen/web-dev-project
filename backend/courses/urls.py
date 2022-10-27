from django.urls import path, include
from rest_framework import routers
from . import views

router = routers.DefaultRouter()
router.register(r'courses', views.CoursesViewSet, 'course')
router.register(r'enrollments', views.EnrollmentsViewSet, 'enrollment')
router.register(r'classes', views.ClassesViewSet, 'class')
router.register(r'attendance', views.AttendanceViewSet, 'attendance')

urlpatterns = [
    path('', include(router.urls))
]
