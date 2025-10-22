from django.apps import AppConfig


class BlogConfig(AppConfig):
    """
    Provides primary key type for blog app
    and sets the app name.
    """
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'blog'
