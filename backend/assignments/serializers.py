from rest_framework.serializers import ModelSerializer
from .models import *

class AssignmentsSerializer(ModelSerializer):
    class Meta:
        model = Assignments
        fields = '__all__'

class ScoresSerializer(ModelSerializer):
    class Meta:
        model = Scores
        fields = '__all__'