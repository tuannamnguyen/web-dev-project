from django.db import models

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
    courses = models.ForeignKey('courses.Courses', on_delete=models.CASCADE)
    cycles = models.ForeignKey('courses.Cycle', on_delete=models.CASCADE)
    course_start_date = models.DateField()
    course_end_date = models.DateField()

    class Meta:
        constraints = [
            models.UniqueConstraint('courses', 'cycles', name='cpc_unique_courses_cycles')
        ]

class Enrollments(models.Model):
    courses = models.ForeignKey('courses.CoursesPerCycle', on_delete=models.CASCADE)
    students = models.ForeignKey('users.Students', on_delete=models.CASCADE)
    enrollment_date = models.DateField()
    cancelled = models.BooleanField()
    cancelled_reason = models.CharField(max_length=100, blank=True)

    class Meta:
        constraints = [
            models.UniqueConstraint('students', 'courses', name='enrollments_unique_courses_students')
        ]


class Classes(models.Model):
    courses = models.ForeignKey('courses.CoursesPerCycle', on_delete=models.CASCADE)
    teachers = models.ForeignKey('users.Teachers', on_delete=models.CASCADE)
    class_no = models.IntegerField()
    class_title = models.CharField(max_length=100)
    class_date = models.CharField(max_length=100)
    start_time = models.TimeField()
    end_time = models.TimeField()

    class Meta:
        constraints = [
            models.UniqueConstraint('courses', 'teachers', name='classes_unique_courses_teachers')
        ]


class Attendance(models.Model):
    classes = models.ForeignKey('courses.Classes', on_delete=models.CASCADE)
    students = models.ForeignKey('users.Students', on_delete=models.CASCADE)
    time_arrive = models.TimeField(blank=True)
    time_leave = models.TimeField(blank=True)

    class Meta: 
        constraints = [
            models.UniqueConstraint('classes', 'students', name='attendance_unique_classes_students')
        ]
