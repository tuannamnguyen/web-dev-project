from django.db import models
from django.contrib.auth.models import AbstractUser, BaseUserManager
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.utils.translation import gettext_lazy as _
from django.db import models
from django.db.models.signals import post_save
from django.conf import settings
from django.dispatch import receiver
from django.contrib.auth.models import AbstractUser
from rest_framework.authtoken.models import Token
from django.db import models
from django.db.models.signals import post_save
from django.conf import settings
from django.dispatch import receiver
from django.contrib.auth.models import AbstractUser
from rest_framework.authtoken.models import Token
# Create your models here.

class User(AbstractUser):
    is_student=models.BooleanField(default=False)
    is_teacher=models.BooleanField(default=False)

    def __str__(self) :
        return self.username
        
@receiver(post_save, sender=settings.AUTH_USER_MODEL)
def create_auth_token(sender, instance=None, created=False, **kwargs):
    if created:
        Token.objects.create(user=instance)


class Students(models.Model):
    user=models.OneToOneField(User, related_name="student", on_delete=models.CASCADE)
    email = models.EmailField()
    birth_date = models.CharField(max_length=10, blank=True, null=True)
    phone_number = models.CharField(max_length=30, blank=True, default='')

    def __str__(self):
        return self.user.username



class Teachers(models.Model):
    user=models.OneToOneField(User, related_name="teacher", on_delete=models.CASCADE)
    teacher_name = models.CharField(max_length=100)
    email = models.EmailField()
    phone_number = models.CharField(max_length=30, blank=True, default='')

    def __str__(self):
        return self.teacher_name


class TeachersPerCourse(models.Model):
    courses = models.ForeignKey('courses.Courses', on_delete=models.CASCADE)
    teachers = models.ForeignKey('users.Teachers', on_delete=models.CASCADE)

    class Meta: 
        constraints = [
            models.UniqueConstraint('courses', 'teachers', name='tpc_unique')
        ]
