from django.contrib import admin
from TeacherInfo.models import TeachersDetails
# Register your models here.

@admin.register(TeachersDetails)
class TeacherAdmin(admin.ModelAdmin):
    list_display = ('name','description','linkedInLink','profile_pic',)
