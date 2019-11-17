from django.conf.urls import url
from . import views

app_name = 'loan'
urlpatterns = [
    # url('', views.home, name='home'),
    url('login/', views.login, name='login'),
    url('aboutus/', views.aboutus, name='aboutus'),
    url('connect/', views.connect, name='connect'),
    url('company/', views.company, name='company'),
    url('loginPost/', views.loginPost, name='loginPost'),
    url('home/', views.home,name='home'),
    url('sendMail/', views.sendMail,name='sendMail'),
]