from django.urls import path, include
from . import views
from rest_framework import routers
from .views import StudentsList
router = routers.DefaultRouter()
urlpatterns = [
   path('', include(router.urls)),
   path('Students/', views.StudentsList.as_view()),
   path('Students/<int:pk>', views.StudentsDetail.as_view()),
   path('Teachers/',views.TeachersList.as_view() ),
   path('Teachers/<int:pk>', views.TeachersDetail.as_view()),
]

