from django.shortcuts import render
from Courses.models import CoursesDetails

# Create your views here.
def Core_Java_Page(request):
    data1=CoursesDetails.objects.get(id=1)
    return render(request,"CourseLandingPage/Core_JAVA.html",{'data1':data1})
    
def C_Program_Page(request):
    data2=CoursesDetails.objects.get(id=2)
    return render(request,"CourseLandingPage/Programming_with_C.html",{'data2':data2})

def Web_Development_using_Django_Page(request):
    data3=CoursesDetails.objects.get(id=3)
    return render(request,"CourseLandingPage/Web_Development_using_Django.html",{'data3':data3})

def Ethical_Hacking_Page(request):
    data4=CoursesDetails.objects.get(id=4)
    return render(request,"CourseLandingPage/Ethical_Hacking.html",{'data4':data4})

def Android_Development_Page(request):
    data5=CoursesDetails.objects.get(id=5)
    return render(request,"CourseLandingPage/Android_Development.html",{'data5':data5})

def Testing_Page(request):
    data6=CoursesDetails.objects.get(id=6)
    return render(request,"CourseLandingPage/Testing.html",{'data6':data6})