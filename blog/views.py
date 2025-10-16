from django.shortcuts import render
from django.views import generic
from .models import Post

# Create your views here.

class PostList(generic.ListView):
    # queryset = Post.objects.filter(author=4) # Filter posts by author with ID 1
    # queryset = Post.objects.all() # Get all posts
    # queryset = Post.objects.all().order_by('-created_on') # Get all posts ordered by creation date descending
    queryset = Post.objects.filter(status=1) # Get all published posts, not drafts
    template_name = "blog/index.html"
    paginate_by = 6
    