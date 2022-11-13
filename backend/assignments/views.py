from rest_framework import viewsets
from .models import *
from .serializers import *

class AssignmentsViewSet(viewsets.ModelViewSet):
    serializer_class = AssignmentsSerializer

    def get_queryset(self):
        return Assignments.objects.all()

class ScoresViewSet(viewsets.ModelViewSet):
    serializer_class = ScoresSerializer
    
    def get_queryset(self):
        return Scores.objects.all()
