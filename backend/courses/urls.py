from xml.etree.ElementInclude import include
from django.urls import path, include
from rest_framework import routers
from . import views

router = routers.DefaultRouter()
router.register(r'courses', views.CoursesViewSet, 'courses')

urlpatterns = [
    path('', include(router.urls))
]
