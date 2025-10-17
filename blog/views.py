from django.shortcuts import render, get_object_or_404
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

# This function is defined outside the class
def post_detail(request, slug):
    """
    Display an individual :model:`blog.Post`.
    """
    queryset = Post.objects.filter(status=1)
    post = get_object_or_404(queryset, slug=slug)

    return render(
        request,
        "blog/post_detail.html",
        {"post": post},
    )