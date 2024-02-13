# from django.db import models

# class ValidEmail(models.Model):
#     email = models.EmailField(unique=True)
#     submission_date = models.DateTimeField(auto_now_add=True)

#     def __str__(self):
#         return self.email





from django.db import models

class ValidEmail(models.Model):
    email = models.EmailField(unique=True)
    submission_date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.email






