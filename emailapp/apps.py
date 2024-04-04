from django.apps import AppConfig  # type: ignore


class EmailappConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'emailapp'