from tkinter import CASCADE
from django.db import models
from users.models import Students


class Enrollments(models.Model):
    courses = models.ForeignKey('CoursesPerCycle', on_delete=CASCADE)
    student = models.ForeignKey(Students, on_delete=CASCADE)
    enrollment_date = models.DateField()
    cancelled = models.BooleanField()

