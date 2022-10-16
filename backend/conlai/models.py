from itertools import cycle
from operator import mod
from unicodedata import category
from django.db import models

# Create your models here.
class Categories(models.Model):
    categoryDescription = models.CharField(max_length = 100)

class Course(models.Model):
    courseDescription = models.CharField(max_length = 100)
    abstract = models.TextField(max_length = 100)
    bibliography = models.TextField(max_length = 100)
    category = models.ForeignKey(Categories, on_delete=models.CASCADE)

class Cycle(models.Model):
    cycleDescription = models.CharField(max_length = 100)
    cycleEndDate = models.DateField()
    cycleStartDate = models.DateField()
    vacationStartDate = models.DateField()
    vacationEndDate = models.DateField()

class CoursesPerCycle(models.Model):
    courseStartDate = models.DateField(nullable = False)
    courseEndDate = models.DateField()
    cycle = models.ForeignKey(Cycle, on_delete=models.CASCADE)
    course = models.ForeignKey(Course, on_delete=models.CASCADE)