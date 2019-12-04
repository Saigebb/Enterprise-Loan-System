from django.conf.urls import url
from . import views

app_name = 'loan'
urlpatterns = [

    url('home/', views.home, name='home'),
    url('login/', views.login, name='login'),
    url('register/', views.register, name='register'),
    url('personal/', views.personal, name='personal'),
    url('certification/', views.certification, name='certification'),
    url('myLoan/', views.myLoan, name='myLoan'),
    url('apply/', views.apply, name='apply'),
    url('loans/', views.loans, name='loans'),
    url('aboutus/', views.aboutus, name='aboutus'),
    url('connect/', views.connect, name='connect'),
    url('company/', views.company, name='company'),
    url('loginPost/', views.loginPost, name='loginPost'),
    url('signupPost/', views.signupPost, name='signupPost'),
    url('sendMail/', views.sendMail, name='sendMail'),
    url('certify/', views.certify, name='certify'),
    url('applyForm/', views.applyForm, name='applyForm'),
    url('personalPost/', views.personalPost, name='personalPost'),
    url('sendCertification/', views.sendCertification, name='sendCertification'),
    # 后台
    url('loanManage/', views.loanManage, name='loanManage'),
    url('loanDetails/', views.loanDetails, name='loanDetails'),
    url('loanApproval/', views.loanApproval, name='loanApproval'),
    #url('', views.home, name='home'),
    url('sidebar/', views.sidebar, name='sidebar'),
    url('applyFirst/', views.applyFirst, name='applyFirst'),
]