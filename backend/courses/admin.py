from django.contrib import admin
from .models import *

models_list = [Courses, Enrollments, Classes, Attendance]
admin.site.register(models_list)

