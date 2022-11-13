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
    path('', include(router.urls)),
    path('signup/student/', StudentsSignupView.as_view()),
    path('signup/teacher/', TeachersSignupView.as_view()),
    path('login/student/',StudentLoginByAuthToken.as_view(), ),
    path('login/teacher/',TeacherLoginByAuthToken.as_view(), ),
    path('logout/', LogoutView.as_view()),
    path('student/dashboard/', StudentsOnlyView.as_view()),
    path('teacher/dashboard/', TeachersOnlyView.as_view()),
]

