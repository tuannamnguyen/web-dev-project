from django.urls import path
from . import views

urlpatterns = [
    path('', views.courseList),
    path('coursepost/<slug:course_code>', views.CoursePostsListView.as_view())
]
