from datetime import datetime
from django.db import models

class Assignments(models.Model):
    courses = models.ForeignKey('courses.Courses', on_delete=models.CASCADE)
    assignment_number = models.IntegerField(primary_key=True)
    assignment_date = models.DateField(default=datetime.now)
    assignment_deadline = models.DateTimeField()
    description = models.TextField()

class Scores(models.Model):
    assignments = models.ForeignKey('assignments.Assignments', on_delete=models.CASCADE)
    students = models.ForeignKey('users.Students', on_delete=models.CASCADE)
    score = models.DecimalField(max_digits=4, decimal_places=2)


