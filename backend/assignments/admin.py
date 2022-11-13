from django.contrib import admin
from .models import *

models_list = [Assignments, Scores]
admin.site.register(models_list)
