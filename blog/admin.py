from django.contrib import admin
from .models import BlogCategory, Blog, BlogComment


# Register your models here.
class BlogCategoryAdmin(admin.ModelAdmin):
    list_display = ['name']


class BlogAdmin(admin.ModelAdmin):
    list_display = ['title', 'author', 'category', 'pub_time', 'content']


class BlogCommentAdmin(admin.ModelAdmin):
    list_display = ['blog', 'author', 'pub_time', 'content']


admin.site.register(BlogCategory, BlogCategoryAdmin)
admin.site.register(Blog, BlogAdmin)
admin.site.register(BlogComment, BlogCommentAdmin)
