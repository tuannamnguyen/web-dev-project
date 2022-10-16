from django.db import models
from users.models import Students, Teachers


class Enrollments(models.Model):
    courses = models.ForeignKey('CoursesPerCycle', on_delete=models.CASCADE)
    student = models.ForeignKey(Students, on_delete=models.CASCADE)
    enrollment_date = models.DateField()
    cancelled = models.BooleanField()
    cancelled_reason = models.CharField(max_length=100, null=True)


class Classes(models.Model):
    courses = models.ForeignKey('CoursesPerCycle', on_delete=models.CASCADE)
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
