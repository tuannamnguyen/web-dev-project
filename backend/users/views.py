from rest_framework import viewsets,permissions,generics,status
from users.serializers import *
from .models import *
from rest_framework.views import APIView
# Create your views here.
from django.views.decorators.csrf import ensure_csrf_cookie, csrf_protect
from django.utils.decorators import method_decorator
from rest_framework.response import Response
from django.contrib import auth
from rest_framework.authtoken.views import ObtainAuthToken
from .permission import IsStudentUser, IsTeacherUser

class StudentsViewSet(viewsets.ModelViewSet):
    serializer_class = StudentsSerializer
   
    def get_queryset(self):
        return Students.objects.all()



class TeachersViewSet(viewsets.ModelViewSet):
    serializer_class = TeachersSerializer
    
    def get_queryset(self):
        return Teachers.objects.all()



class TeachersPerCourseViewSet(viewsets.ModelViewSet):
    serializer_class = TeachersPerCourseSerializer
    def get_queryset(self):
        return TeachersPerCourse.objects.all()



class StudentsSignupView(generics.GenericAPIView):
    serializer_class=StudentsSignupSerializer
    def post(self, request, *args, **kwargs):
        serializer=self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user=serializer.save()
        return Response({
            "user":UserSerializer(user, context=self.get_serializer_context()).data,
            "token":Token.objects.get(user=user).key,
            "message":"account created successfully"
        })


class TeachersSignupView(generics.GenericAPIView):
    serializer_class=TeachersSignupSerializer
    def post(self, request, *args, **kwargs):
        serializer=self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user=serializer.save()
        return Response({
            "user":UserSerializer(user, context=self.get_serializer_context()).data,
            "token":Token.objects.get(user=user).key,
            "message":"account created successfully"
        })

class StudentLoginByAuthToken(ObtainAuthToken):
    def post(self, request, *args, **kwargs):
        serializer=self.serializer_class(data=request.data, context={'request':request})
        serializer.is_valid(raise_exception=True)
        user=serializer.validated_data['user']
        token, created=Token.objects.get_or_create(user=user)
        return Response({
            'token':token.key,
            'user_id':user.id,
            'user_email':user.email,
            'birth_date': user.birth_date,
            'is_teacher':user.is_teacher,
            'is_student':user.is_student
        })

class TeacherLoginByAuthToken(ObtainAuthToken):
    def post(self, request, *args, **kwargs):
        serializer=self.serializer_class(data=request.data, context={'request':request})
        serializer.is_valid(raise_exception=True)
        user=serializer.validated_data['user']
        token, created=Token.objects.get_or_create(user=user)
        return Response({
            'token':token.key,
            'user_id':user.id,
            'user_email':user.email,
            'birth_date': user.birth_date,
            'is_teacher':user.is_teacher,
            'is_student':user.is_student
        })

class LogoutView(APIView):
    def post(self, request, format=None):
        request.auth.delete()
        return Response(status=status.HTTP_200_OK)


class TeachersOnlyView(generics.RetrieveAPIView):
    permission_classes=[permissions.IsAuthenticated&IsTeacherUser]
    serializer_class=UserSerializer

    def get_object(self):
        return self.request.user

class StudentsOnlyView(generics.RetrieveAPIView):
    permission_classes=[permissions.IsAuthenticated&IsStudentUser]
    serializer_class=UserSerializer

    def get_object(self):
        return self.request.user