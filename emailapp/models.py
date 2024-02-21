# from django.db import models

# class ValidEmail(models.Model):
#     email = models.EmailField(unique=True)
#     submission_date = models.DateField(auto_now_add=True)

#     def __str__(self):
#         return self.email





from django.db import models

class ValidEmailManager(models.Manager):
    def save_to_mysql(self, email):
        return self.create(email=email)

    def save_to_oracle(self, email):
        return self.using('oracle_db').create(email=email)

    def get_from_mysql(self):
        return self.all()

    def get_from_oracle(self):
        return self.using('oracle_db').all()

class ValidEmail(models.Model):
    email = models.EmailField(unique=True)
    submission_date = models.DateField(auto_now_add=True)

    objects = ValidEmailManager()

    def __str__(self):
        return self.email









