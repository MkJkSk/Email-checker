from django.urls import path
from .views import email_check

urlpatterns = [
    path('', email_check, name='email_check'),
]
