from .models import *
from rest_framework import serializers


class StudentsSerializer(serializers.ModelSerializer):
    student_name = serializers.ReadOnlyField(source="user.username")
    email = serializers.EmailField(source="user.email")
    phone_number = serializers.ReadOnlyField(source="user.phone_number")
    birth_date = serializers.DateField(source="user.birth_date")
    class Meta:
        model = Students
        fields = ["id","student_name", "email","phone_number","birth_date"]


class TeachersSerializer(serializers.ModelSerializer):
    teacher_name = serializers.ReadOnlyField(source="user.username")
    email = serializers.EmailField(source="user.email")
    phone_number = serializers.ReadOnlyField(source="user.phone_number")
    birth_date = serializers.DateField(source="user.birth_date")
    class Meta:
        model = Teachers
        fields = ["id","teacher_name","email","phone_number","birth_date"]


class TeachersPerCourseSerializer(serializers.ModelSerializer):
    class Meta:
        model = TeachersPerCourse
        fields = '__all__'







class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model=User
        fields=['username', 'email',"phone_number","birth_date" ,'is_student','is_teacher']



class StudentsSignupSerializer(serializers.ModelSerializer):
    password2=serializers.CharField(style={"input_type":"password"}, write_only=True)
    phone_number = serializers.CharField(style={"input_type":"phone_number"}, write_only=True)
    birth_date = serializers.DateField(style={"input_type":"birth_date"}, write_only=True)
    class Meta:
        model=User
        fields=['username','email','phone_number','birth_date','password', 'password2']
        extra_kwargs={
            'password':{'write_only':True}
        }
    
    def save(self, **kwargs):
        user=User(
            username=self.validated_data['username'],
            email=self.validated_data['email'],
            phone_number=self.validated_data['phone_number'],
            birth_date = self.validated_data['birth_date']
        )
        password=self.validated_data['password']
        password2=self.validated_data['password2']
        if password !=password2:
            raise serializers.ValidationError({"error":"password do not match"})
        user.set_password(password)
        user.is_student=True
        user.save()
        Students.objects.create(user=user)
        return user


class TeachersSignupSerializer(serializers.ModelSerializer):
    password2=serializers.CharField(style={"input_type":"password"}, write_only=True)
    phone_number = serializers.CharField(style={"input_type":"phone_number"}, write_only=True)
    birth_date = serializers.DateField(style={"input_type":"birth_date"}, write_only=True)
    class Meta:
        model=User
        fields=['username','email','phone_number','birth_date','password', 'password2']
        extra_kwargs={
            'password':{'write_only':True}
        }
    

    def save(self, **kwargs):
        user=User(
            username=self.validated_data['username'],
            email=self.validated_data['email'],
            phone_number=self.validated_data['phone_number'],
            birth_date = self.validated_data['birth_date']
        )
        
        password=self.validated_data['password']
        password2=self.validated_data['password2']
        if password !=password2:
            raise serializers.ValidationError({"error":"password do not match"})
        user.set_password(password)
        user.is_teacher=True
        user.save()
        Teachers.objects.create(user=user)
        return user