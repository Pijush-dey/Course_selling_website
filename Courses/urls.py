from django.urls import path
from . import views

urlpatterns = [
    path('Programming_with_C/',views.C_Program_Page,name='C_Program'),
    path('Core_Java/',views.Core_Java_Page, name='Core_Java'),
    path('Android_Development/',views.Android_Development_Page, name='Android_Development'),
    path('Ethical_Hacking/',views.Ethical_Hacking_Page, name='Ethical_Hacking'),
    path('Testing/',views.Testing_Page, name='Testing'),
    path('Web_Development_using_Django/',views.Web_Development_using_Django_Page, name='Web_Development_using_Django'), 
]