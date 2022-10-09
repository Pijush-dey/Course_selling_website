from django.db import models

# Create your models here.
class StudentInfo(models.Model):
    username=models.CharField(max_length=50)
    first_name=models.CharField(max_length=50)
    last_name=models.CharField(max_length=50)
    email=models.CharField(max_length=60)
    password=models.CharField(max_length=100)

    class Meta:                               #Change model class name in Django admin interface
        verbose_name="Student's Info"
        verbose_name_plural="Student's Info"