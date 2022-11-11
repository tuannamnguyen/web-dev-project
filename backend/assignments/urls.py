from django.urls import path, include
from rest_framework import routers
from . import views

router = routers.DefaultRouter()
router.register(r'assignments', views.AssignmentsViewSet, 'assignments')
router.register(r'scores', views.ScoresViewSet, 'scores')

urlpatterns = [
    path('', include(router.urls))
]