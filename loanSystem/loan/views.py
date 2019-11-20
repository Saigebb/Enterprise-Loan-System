from django.shortcuts import render
from django.views.decorators import csrf
from django.shortcuts import redirect  #重新定向模块
import re
from . import models
from django.core.mail import send_mail
import random
from django.http import HttpResponse

# Create your views here.

def login(request):
    return render(request, 'user/login/login.html')

def aboutus(request):
    return render(request, 'user/aboutus/aboutus.html')

def connect(request):
    return render(request, 'user/aboutus/connect.html')

def company(request):
    return render(request, 'user/aboutus/company.html')

def home(request):
    return render(request, 'user/home/home.html')

def loans(request):
    return render(request, 'user/loans/loans.html')

def apply(request):
    return render(request, 'user/apply/apply.html')

def code():  
    code=""
    while len(code)<5:
        code+=str(random.randint(0, 10))
    return code

EMAIL_HOST = 'smtp.qq.com'
EMAIL_PORT = 25
EMAIL_HOST_USER = '413469406@qq.com' # 你的 QQ 账号
EMAIL_HOST_PASSWORD = 'gkgcapcopbajcbcg'
EMAIL_USE_TLS = True # 这里必须是 True，否则发送不成功
EMAIL_FROM = '413469406@qq.com' # 你的 QQ 账号

def sendMail(request):
    request.encoding='utf-8'
    if request.POST:
        request.session["code"]=code()
        email_title = '发送验证码'
        email_body= '欢迎登录高老庄银行，您的验证码为'+str(request.session["code"])
        email = request.POST['email']  #对方的邮箱
        #email='413469406@qq.com'
        send_status = send_mail(email_title, email_body, EMAIL_FROM, [email])
        if send_status:
            return HttpResponse('1', status=200)
        else:
            return HttpResponse('0', status=200)

# def sendMail(mail):
#     #request.encoding='utf-8'
#     #request.session["code"]=code()
#     email_title = '发送验证码'
#     email_body= '欢迎登录高老庄银行，您的验证码为'+str(123456)
#     email = mail  #对方的邮箱
#     #email='413469406@qq.com'
#     send_status = send_mail(email_title, email_body, EMAIL_FROM, [email])
#     if send_status:
#         return 1
#     else:
#         return 0

#接收POST请求数据
def loginPost(request):
    request.encoding='utf-8'
    ctx ={}
    # if re.match('\w+',request.POST['password']):
    #     return  redirect('home')
    if re.match('^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$',request.POST['phone_email']):
        #['checkName']=1
        if models.Customer.objects.filter(email = request.POST['phone_email']):
            #ctx['name']=1
            if request.POST['password']==request.session["code"]:
                #ctx['psd']=1
                return redirect('loan:home')
            else:
                #ctx['name'] = 0
                ctx["msg"]="验证码不正确"
        else:
            #ctx['name'] = 0
             ctx["msg"]="用户不存在"
    else:
         ctx["msg"]="邮箱格式不正确"
        #ctx['checkName'] = 0
        #ctx['name'] = request.POST['phone_email']
        #ctx['psd'] = request.POST['password']
    return render(request, "user/login.html", ctx)
    #return render(request, "hello.html", ctx)