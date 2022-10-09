from django.db import models

# Create your models here.
class TeachersDetails(models.Model):
    name=models.CharField(max_length=50)
    description=models.TextField()
    linkedInLink = models.URLField(max_length=200)
    profile_pic = models.ImageField(upload_to="images/",blank=True)

    class Meta:                               #Change model class name in Django admin interface
        verbose_name="Teacher's Info"
        verbose_name_plural="Teacher's Info"

    def __str__(self):
       return self.name