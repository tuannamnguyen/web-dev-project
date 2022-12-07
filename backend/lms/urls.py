from django.contrib import admin
from django.urls import path, include, re_path
from django.conf import settings
from django.conf.urls.static import static
from . import views

admin.site.site_header  =  "LMS Administration"  
admin.site.site_title  =  "LMS Administration"
admin.site.index_title  =  "LMS Administration"

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/users/', include('users.urls')),
    path('api/courses/', include('courses.urls')),
    path('api/forum/', include('forum.urls')),
    path('api/', include('base.urls')),
    re_path(r'', views.catchall),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)