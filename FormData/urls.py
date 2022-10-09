from django.urls import path
from . import views

urlpatterns = [
    path('SignIn/',views.SignInPage,name='SignIn'),
    path('SignUp/',views.SignUpPage, name='SignUp'),
]