from django.db import models
from users.models import Students, Teachers

class Courses(models.Model):
    course_id = models.CharField(max_length=10, primary_key=True)
    course_description = models.CharField(max_length=100)
    abstract = models.TextField()
    required_textbook = models.TextField()

class Cycle(models.Model):
    cycle_id = models.CharField(max_length=10, primary_key=True)
    cycle_description = models.CharField(max_length=100)
    cycle_start_date = models.DateField()
    cycle_end_date = models.DateField()


class CoursesPerCycle(models.Model):
    courses = models.ForeignKey(Courses, on_delete=models.CASCADE)
    cycle = models.ForeignKey(Cycle, on_delete=models.CASCADE)
    course_start_date = models.DateField()
    course_end_date = models.DateField()

class Enrollments(models.Model):
    courses = models.ForeignKey(CoursesPerCycle, on_delete=models.CASCADE)
    students = models.ForeignKey(Students, on_delete=models.CASCADE)
    enrollment_date = models.DateField()
    cancelled = models.BooleanField()
    cancelled_reason = models.CharField(max_length=100, blank=True)


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
    students = models.ForeignKey(Students, on_delete=models.CASCADE)
    time_arrive = models.TimeField(blank=True)
    time_leave = models.TimeField(blank=True)
