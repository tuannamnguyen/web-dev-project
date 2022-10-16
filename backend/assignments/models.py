from django.db import models
from users.models import Students
from courses.models import CoursesPerCycle


class Assignments(models.Model):
    courses = models.ForeignKey(CoursesPerCycle, on_delete=models.CASCADE)
    assignment_num = models.IntegerField()
    assignment_datetime = models.DateTimeField()
    description = models.TextField()


class Scores(models.Model):
    assignments = models.ForeignKey(Assignments, on_delete=models.CASCADE)
    students = models.ForeignKey(Students, on_delete=models.CASCADE)
    score = models.DecimalField(max_digits=4, decimal_places=2)
