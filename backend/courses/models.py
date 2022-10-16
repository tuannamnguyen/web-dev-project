from django.db import models
from users.models import Students, Teachers

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

class Enrollments(models.Model):
    courses = models.ForeignKey(CoursesPerCycle, on_delete=models.CASCADE)
    student = models.ForeignKey(Students, on_delete=models.CASCADE)
    enrollment_date = models.DateField()
    cancelled = models.BooleanField()
    cancelled_reason = models.CharField(max_length=100, null=True)


class Classes(models.Model):
    courses = models.ForeignKey(CoursesPerCycle, on_delete=models.CASCADE)
    teacher = models.ForeignKey(Teachers, on_delete=models.CASCADE)
    class_no = models.IntegerField()
    class_title = models.CharField(max_length=100)
    class_date = models.CharField(max_length=100)
    start_time = models.TimeField()
    end_time = models.TimeField()


class Attendance(models.Model):
    classes = models.ForeignKey(Classes, on_delete=models.CASCADE)
    student = models.ForeignKey(Students, on_delete=models.CASCADE)
    time_arrive = models.TimeField(null=True)
    time_leave = models.TimeField(null=True)