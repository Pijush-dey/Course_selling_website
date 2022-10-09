from django.shortcuts import render
from Courses.models import CoursesVarity
from TeacherInfo.models import TeachersDetails

def homePage(request):
    teacher_data = TeachersDetails.objects.all()

    course_data = CoursesVarity.objects.all()
    
    data={'teacher_data':teacher_data,'course_data':course_data}
    return render(request,"Registration/Home_Page.html",data)