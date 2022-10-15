from tkinter import CASCADE
from django.db import models

from users.models import Students, Teachers

# Create your models here.

class classes(models.Model):
    courses_id = models.ForeignKey(Courses, on_delete=CASCADE)
    cycle_id = models.ForeignKey(cycle, on_delete=CASCADE)
    class_no = models.IntegerField()
    teacher_id = models.ForeignKey(Teachers, on_delete = CASCADE)
    class_title = models.CharField(max_length = 100)
    class_date = models.CharField(max_length = 100)
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()

class Attendance(models.Model):
    courses_id = models.ForeignKey(Courses, on_delete=CASCADE)
    cycle_id = models.ForeignKey(cycle, on_delete=CASCADE)
    class_no = models.ForeignKey(classes, on_delete=CASCADE)
    student_id = models.ForeignKey(Students, on_delete=CASCADE)
    time_arrive = models.DateTimeField(null = True)
    time_leave = models.DateTimeField(null = True)
