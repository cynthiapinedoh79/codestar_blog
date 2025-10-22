from django.contrib import admin
from django_summernote.admin import SummernoteModelAdmin
from .models import Post, Comment


@admin.register(Post)
class PostAdmin(SummernoteModelAdmin):
    """
    Lists fields for display in admin, fileds for search,
    field filters, fields to prepopulate and rich-text editor.
    1. list_display: Fields to display in the admin list view.
    2. search_fields: Fields to include in the search functionality.
    3. list_filter: Fields to filter the list view.
    4. prepopulated_fields: Automatically populate the slug field based on the title.
    5. summernote_fields: Fields that will use the Summernote rich-text editor.
    """

    list_display = ('title', 'slug', 'status', 'created_on')
    search_fields = ['title', 'content']
    list_filter = ('status', 'created_on')
    prepopulated_fields = {'slug': ('title',)}
    summernote_fields = ('content',)


# Register your models here.
admin.site.register(Comment)
