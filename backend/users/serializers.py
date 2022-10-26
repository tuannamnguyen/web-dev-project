from dataclasses import field, fields
from .models import Students, Teachers
from rest_framework import serializers
class StudentsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Students
        fields = [ "student_id","student_name","email","birth_date", "phone_num"]
class TeachersSerializer(serializers.ModelSerializer):
    class Meta:
        model = Teachers
        fields = ["teacher_id", "teacher_name","email","phone_num"]