#!/bin/sh

export DJANGO_DB_DEFAULT_AUTO_NOW_ADD_ALL=true

echo "Running migrate command "
sleep 2
python manage.py migrate --noinput

echo "Running makemigrations command "
sleep 2
python manage.py makemigrations --noinput

echo "Running migrate for add Submission_time column "
sleep 2
python manage.py migrate --noinput

echo "Running makemigrations for MySQl for set_Timezone "
sleep 2
python manage.py makemigrations --empty emailapp

echo "Running migrate for add Submission_time in MYSQl  colum "
sleep 2
python manage.py migrate --database=MYSQL --noinput

echo "Running webserver command "
sleep 2
python manage.py runserver 0.0.0.0:8000
