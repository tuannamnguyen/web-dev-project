from django.contrib import admin

# Register your models here.
from .models import *
admin.site.register(Students)
admin.site.register(Teachers)
admin.site.register(TeachersPerCourse)
admin.site.register(User)
