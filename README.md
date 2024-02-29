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
Start the containers
```

**Run the Docker Containers:**

* Please run the DB before hand as Django doesnt auto connect to the DB after launching the Django Container first.

```console
docker run -d -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=emailchecker -p 3306:3306 --network email-net mysql

docker run -p 3307:3306 -e MARIADB_ROOT_PASSWORD=password -d mariadb:latest

docker run -it -e DJANGO_SETTINGS_MODULE=emailchecker.settings -p 8000:8000 --network email-net projectfndev/email-checker
```




**Run migrations**
```console
docker exec django-container-name python manage.py migrate

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