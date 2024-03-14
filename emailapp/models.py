from django.db import models

class ValidEmailManager(models.Manager):
    def save_to_database(self, email, database_alias=None):
        using_db = database_alias or 'default'
        self.using(using_db).create(email=email)

class ValidEmail(models.Model):
    email = models.EmailField(unique=True)
    submission_date = models.DateField(auto_now_add=True)
    submission_time = models.TimeField(auto_now_add=True)
     
    objects = ValidEmailManager()

    def __str__(self):
        return self.email

