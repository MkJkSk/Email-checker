# Email Checker - WebApp
* An application for validating email addresses built with Django and MySQL.

**Features**:

* Check if an email address syntax is valid
* Verify if an email address actually exists
* View list of all checked emails
* Dockerized application and database

## Getting Started
##### Prerequisites

* Docker


**Installation**

Clone the repository

```python
git clone https://github.com/Knowledgesprint-Technologies/Email_Checker.git
```

**Build the Docker images**

```console
docker build -t email-checker . -f Dockerfile2

docker build -t sql . -f Dockerfile-sql

docker build -t mariadb-custom . -f Dockerfile-mariadb

Start  Containers

```

**Run the Docker Containers:**

* Please run the DB before hand as Django doesnt auto connect to the DB after launching the Django Container first.

```console
docker run --name mysql-vol -e MYSQL_ROOT_PASSWORD=docker -p 3306:3306 -d --mount source=mysqlvolume,target=/var/lib/mysql  mysql


docker run --name mariadb-vol -e MARIADB_ROOT_PASSWORD=password -p 3307:3306 -d --mount source=mariadb,target=/var/lib/mysql  mariadb:latest 


docker run -it -e DJANGO_SETTINGS_MODULE=emailchecker.settings -p 8000:8000 --network email-net projectfndev/email-checker
```




**Run migrations**
* Please run the log command first to start container.
```console
docker logs container_id
```
* Enables automatic adding of timestamp fields for new objects in the default database.
* Executes migrations without requiring manual input.
* Creates migrations for changes in models.
* Executes migrations to add a new column named "Submission_time".
* Generates an empty migration for setting timezone in MySQL.
* Executes migrations specifically for the MySQL database to add the "Submission_time" column.
* Initiates the Django web server to run the application on port 8000. 
```console
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
```
Second Option:
*This command go inside the container and run migrate and makemigrations command.
```console
docker exec -it container_id bash

python manage.py makemigrations
python manage.py migrate
```
Access the app at http://localhost:8000

Usage:
* Web UI for entering email addresses to check
* REST API endpoints for validating emails
* Interactive shell via docker exec django-container-name python manage.py shell
* Documentation
* API Reference
* Architecture
* Built With
    * Django - Python web framework
    * MySQL - Database
    * Docker - Containerization*
