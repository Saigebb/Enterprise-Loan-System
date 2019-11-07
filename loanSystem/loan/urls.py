from django.conf.urls import url
from . import views

app_name = 'loan'
urlpatterns = [
    # url('', views.home, name='home'),
    url('login/', views.login, name='login'),
    url('aboutus/', views.aboutus, name='aboutus'),
]