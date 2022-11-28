from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import generics
from rest_framework.parsers import MultiPartParser, FormParser

# from rest_framework.permissions import IsAuthenticated

from .serializers import *
from .models import *

# from users.models import Student


@api_view(['GET'])
# @permission_classes([IsAuthenticated])
def courseList(request):
    user = request.user
    # student = Student.objects.get(user=user)
    # courses = student.course_set.all()
    courses = Course.objects.all()
    serializer = CourseSerializer(courses, many=True)
    return Response(serializer.data)

class CoursePostsListView(generics.ListAPIView):
    serializer_class = CoursePostsSerializer
    parser_classes = (MultiPartParser, FormParser)
    def get_queryset(self):
        courses = self.kwargs['course_code']
        queryset = CoursePost.objects.filter(courses = courses)
        return queryset
    
    def perform_create(self, serializer):
        serializer.save(creator=self.request.user)