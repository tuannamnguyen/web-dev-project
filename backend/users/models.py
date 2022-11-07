from django.db import models

class Students(models.Model):
    student_id = models.CharField(max_length=10, primary_key=True)
    student_name = models.CharField(max_length=100)
    email = models.EmailField()
    birth_date = models.DateField(max_length=10, blank=True, null=True)
    phone_number = models.CharField(max_length=30, blank=True, default='')

class Teachers(models.Model):
    teacher_id = models.CharField(max_length=10, primary_key=True)
    teacher_name = models.CharField(max_length=100)
    email = models.EmailField()
    phone_number = models.CharField(max_length=30, blank=True, default='')

class TeachersPerCourse(models.Model):
    courses = models.ForeignKey('courses.Courses', on_delete=models.CASCADE)
    teachers = models.ForeignKey('users.Teachers', on_delete=models.CASCADE)

    class Meta: 
        constraints = [
            models.UniqueConstraint('courses', 'teachers', name='tpc_unique')
        ]





