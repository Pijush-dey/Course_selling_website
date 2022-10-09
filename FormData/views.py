
from django.shortcuts import render,redirect
from django.contrib import messages
from django.contrib.auth import authenticate, login
from django.contrib.auth.models import User
from FormData.models import StudentInfo

# Create your views here.

def SignUpPage(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        email = request.POST.get('email')
        password1 = request.POST.get('password1')
        password2 = request.POST.get('password2')

        if password1==password2:
            if User.objects.filter(username=username).exists():
                messages.error(request,'Username already exist')
            elif User.objects.filter(email=email).exists():
                messages.add_message(request, messages.ERROR, 'Email already exist')
            elif User.objects.filter(first_name=first_name).exists() and User.objects.filter(last_name=last_name).exists():
                messages.add_message(request, messages.ERROR, 'Same user cannot signup again')
            else:
                user= StudentInfo(username=username,first_name=first_name,last_name=last_name,email=email,password=password1)
                user.save()
                messages.add_message(request, messages.SUCCESS, 'Your account is successfully created !')
                return redirect('SignIn')
        else:
            messages.add_message(request, messages.ERROR, 'The two passwords are not same')
    return render(request,"Registration/Sign_Up.html")


def SignInPage(request):
    message = messages.get_messages(request)
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('homePage')
        else:
            messages.add_message(request, messages.ERROR, 'Username or password is incorrect')
    return render(request,"Registration/Sign_In.html",{'message':message})