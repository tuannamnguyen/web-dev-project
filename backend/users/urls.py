from django.urls import path, include
from . import views
from rest_framework import routers
from .views import *
router = routers.DefaultRouter()
router.register(r"students", views.StudentsViewSet, "students")
router.register(r"teachers", views.TeachersViewSet, "teachers")
router.register(r"teacherspercourse",
                views.TeachersPerCourseViewSet, "teacherspercourse")

urlpatterns = [
    path('', include(router.urls))
]
