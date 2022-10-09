from django.db import models
from tinymce.models import HTMLField

# Create your models here.
class CoursesVarity(models.Model):
    name=models.CharField(max_length=100)
    description=models.TextField()
    url=models.CharField(max_length=100)

    class Meta:                               #Change model class name in Django admin interface
        verbose_name='Course Varity'
        verbose_name_plural='Course Varity'

    def __str__(self):
       return self.name


class CoursesDetails(models.Model):
    name=models.CharField(max_length=40)
    course_duration=models.CharField(max_length=10)
    suitable_for=models.CharField(max_length=100)
    course_objective=models.TextField()
    prerequisite=models.CharField(max_length=100)
    course_fee=models.CharField(max_length=35)
    Fee_structure=models.CharField(max_length=150)
    course_content=HTMLField() 
    
    class Meta:                               #Change model class name in Django admin interface
        verbose_name="Course's Details"
        verbose_name_plural="Course's Details"

    def __str__(self):
       return self.name