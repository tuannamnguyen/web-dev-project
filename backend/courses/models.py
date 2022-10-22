from django.db import models

class Courses(models.Model):
    course_id = models.CharField(max_length=10, primary_key=True)
    course_description = models.CharField(max_length=100)
    course_abstract = models.TextField()
    course_required_textbook = models.TextField()

class Enrollments(models.Model):
    courses = models.ForeignKey('courses.Courses', on_delete=models.CASCADE)
    students = models.ForeignKey('users.Students', on_delete=models.CASCADE)
    enrollment_date = models.DateField()
    cancelled = models.BooleanField()
    cancelled_reason = models.CharField(max_length=100)

    class Meta:
        constraints = [
            models.UniqueConstraint('students', 'courses', name='enrollments_unique')
        ]

class Classes(models.Model):
    courses = models.ForeignKey('courses.Courses', on_delete=models.CASCADE)
    teachers = models.ForeignKey('users.Teachers', on_delete=models.CASCADE)
    class_number = models.IntegerField(primary_key=True)
    class_date = models.DateField()
    start_time = models.TimeField()
    end_time = models.TimeField()

    class Meta:
        constraints = [
            models.UniqueConstraint('courses', 'teachers', name='classes_unique')
        ]

class Attendance(models.Model):
    classes = models.ForeignKey('courses.Classes', on_delete=models.CASCADE)
    students = models.ForeignKey('users.Students', on_delete=models.CASCADE)
    time_arrive = models.TimeField(blank=True, null=True)
    time_leave = models.TimeField(blank=True, null=True)

    class Meta: 
        constraints = [
            models.UniqueConstraint('classes', 'students', name='attendance_unique')
        ]




