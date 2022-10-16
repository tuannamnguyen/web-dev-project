from django.db import models


class Students(models.Model):
    student_id = models.CharField(max_length=10, primary_key=True)
    student_name = models.CharField(max_length=100)
    email = models.EmailField()
    birth_date = models.DateField()
    phone_num = models.CharField(max_length=30, null=True)


class Teachers(models.Model):
    teacher_id = models.CharField(max_length=10, primary_key=True)
    teacher_name = models.CharField(max_length=100)
    email = models.EmailField()
    phone_num = models.CharField(max_length=30, null=True)


class TeachersPerCourse(models.Model):
    courses = models.ForeignKey('CoursesPerCycle', on_delete=models.CASCADE)
    teacher = models.ForeignKey(Teachers, on_delete=models.CASCADE)