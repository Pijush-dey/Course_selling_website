from django.contrib import admin
from Courses.models import CoursesDetails, CoursesVarity
# Register your models here.

@admin.register(CoursesVarity)
class CourseAdmin(admin.ModelAdmin):
    list_display = ('name','description','url')


@admin.register(CoursesDetails)
class CourseDetailsAdmin(admin.ModelAdmin):
    list_display = ('name','course_duration', 'suitable_for','course_objective','prerequisite','course_fee','Fee_structure','course_content') 