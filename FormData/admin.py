from django.contrib import admin
from FormData.models import StudentInfo

# Register your models here.
@admin.register(StudentInfo)
class UserAdmin(admin.ModelAdmin):
    list_display = ('username','email','first_name','last_name','password')