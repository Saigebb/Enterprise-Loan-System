from django.conf.urls import url
from . import views

app_name = 'loan'
urlpatterns = [

    url('home/', views.home, name='home'),
    url('login/', views.login, name='login'),
    url('apply/', views.apply, name='apply'),
    url('loans/', views.loans, name='loans'),
    url('aboutus/', views.aboutus, name='aboutus'),
    url('connect/', views.connect, name='connect'),
    url('company/', views.company, name='company'),
    url('loginPost/', views.loginPost, name='loginPost'),
    url('applyPost/', views.loginPost, name='applyPost'),
    url('signupPost/', views.loginPost, name='signupPost'),
    url('sendMail/', views.sendMail, name='sendMail'),
    url('', views.home, name='home'),
]