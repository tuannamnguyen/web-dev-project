from django.db import models

# Create your models here.
class CoursePost(models.Model):
    courses = models.ForeignKey('courses.Course', on_delete=models.CASCADE)
    post_time = models.DateTimeField()
    title = models.CharField(max_length=100)
    detail = models.TextField()