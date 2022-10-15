from django.db import models


class Students(models.Model):
    student_id = models.CharField(max_length=10, primary_key=True)
    student_name = models.CharField(max_length=100)
    email = models.EmailField()
    birth_date = models.DateField()
    phone_num = models.CharField(max_length=30)

class Teachers(models.Model):
    teacher_id = models.CharField(max_length = 10, primary_key = True)
    teacher_name = models.CharField(max_length = 100)
    email = models.CharField(max_length = 100)
    phone_no = models.CharField(max_length = 100, null = True)

class TeacherPerCourse(models.Model):
    coures_id = models.ForeignKey(Courses, on_delete = models.CASCADE)
    cycle_id = models.ForeignKey(Cycles, om_delete = models.CASCADE)
    teacher_id = models.ForeignKey(Teachers, on_delete = models.CASCADE)
