from tkinter import CASCADE
from tkinter.tix import Tree
from django.db import models
from users.models import Students, Teachers



class Enrollments(models.Model):
    courses = models.ForeignKey('CoursesPerCycle', on_delete=CASCADE)
    student = models.ForeignKey(Students, on_delete=CASCADE)
    enrollment_date = models.DateField()
    cancelled = models.BooleanField()
    cancelled_reason = models.CharField(max_length=100, null=True)


class Classes(models.Model):
    courses = models.ForeignKey('CoursesPerCycle', on_delete=CASCADE)
    teacher = models.ForeignKey(Teachers, on_delete=CASCADE)
    class_no = models.IntegerField()
    class_title = models.CharField(max_length=100)
    class_date = models.CharField(max_length=100)
    start_time = models.TimeField()
    end_time = models.TimeField()


class Attendance(models.Model):
    classes = models.ForeignKey(Classes, on_delete=CASCADE)
    student = models.ForeignKey(Students, on_delete=CASCADE)
    time_arrive = models.TimeField(null=True)
    time_leave = models.TimeField(null=True)
