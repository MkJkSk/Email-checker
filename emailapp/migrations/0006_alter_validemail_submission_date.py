# Generated by Django 5.0.1 on 2024-02-17 12:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('emailapp', '0005_alter_validemail_submission_date'),
    ]

    operations = [
        migrations.AlterField(
            model_name='validemail',
            name='submission_date',
            field=models.DateField(auto_now_add=True),
        ),
    ]
