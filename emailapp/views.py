# from django.core.validators import validate_email                            {#PHASE 1}
# from django.core.exceptions import ValidationError
# from django.shortcuts import render
# from django.http import HttpResponse

# def email_check(request):
#     valid_emails = []
#     invalid_emails = []

#     if request.method == 'POST':
#         emails = request.POST.get('emails', '').split(',')

#         for email in emails:
#             try:
#                 validate_email(email.strip())  
#                 valid_emails.append(email)
#             except ValidationError:
#                 invalid_emails.append(email)

#     return render(request, 'emailapp/email_check.html', {'valid_emails': valid_emails, 'invalid_emails': invalid_emails})


# from django.core.validators import validate_email                            {#PHASE 2}
# from django.core.exceptions import ValidationError
# from django.shortcuts import render

# def email_check(request):
#     valid_emails = []
#     invalid_emails = []

#     if request.method == 'POST':
        
#         emails = request.POST.get('emails', '').split()

#         for email in emails:
#             try:
#                 validate_email(email.strip()) 
#                 valid_emails.append(email)
#             except ValidationError:
#                 invalid_emails.append(email)

#     return render(request, 'emailapp/email_check.html', {'valid_emails': valid_emails, 'invalid_emails': invalid_emails})




from .models import ValidEmail
from django.core.validators import validate_email
from django.core.exceptions import ValidationError
from django.shortcuts import render

def email_check(request):
    valid_emails = []
    invalid_emails = []

    if request.method == 'POST':
        emails = request.POST.get('emails', '').split()

        for email in emails:
            try:
                validate_email(email.strip())
                valid_emails.append(email)

                
                existing_entry = ValidEmail.objects.filter(email=email.strip()).first()

                if not existing_entry:
                    
                    ValidEmail.objects.create(email=email.strip())
            except ValidationError:
                invalid_emails.append(email)

    return render(request, 'emailapp/email_check.html', {'valid_emails': valid_emails, 'invalid_emails': invalid_emails})




