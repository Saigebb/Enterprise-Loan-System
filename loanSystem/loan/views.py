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
    credit = [
        {
            'title': '高庄效贷-易企贷',
            'titleIntro': '线上申请最快10分钟完成审批，1小时放款',
            'amount': '5-100',
            'month': '12-36',
            'monthIr': '0.85%'
        },
        {
            'title': '高庄效贷-金数贷',
            'titleIntro': '线上申请最快10分钟完成审批，1小时放款',
            'amount': '1-100',
            'month': '6-12',
            'monthIr': '0.65%'
        },
        {
            'title': '高庄效贷-阳光贷',
            'titleIntro': '纯信用贷款，审批放款方便快捷！',
            'amount': '1-100',
            'month': '6-12',
            'monthIr': '0.85%'
        },
        {
            'title': '高庄效贷-商通贷',
            'titleIntro': '借款额度最高达100万；最快24小时放款！',
            'amount': '1-100',
            'month': '3-24',
            'monthIr': '1.02%'
        },
        {
            'title': '高庄效贷-易企贷',
            'titleIntro': '线上申请最快10分钟完成审批，1小时放款',
            'amount': '5-100',
            'month': '12-36',
            'monthIr': '0.85%'
        },

    ]

    mortgage = [
        {
            'title': '高庄房抵贷',
            'titleIntro': '1对1金融VIP顾问',
            'amount': '30-1000',
            'month': '1-12',
            'monthIr': '0.58%'
        },
    ]
    return render(request, 'user/loans/loans.html', {
        'credit': credit, 'mortgage': mortgage})


def apply(request):
    return render(request, 'user/apply/apply.html')

def register(request):
    return render(request, 'user/register/register.html')

def personal(request):
    return render(request, 'user/personal/personal.html')

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

#登录逻辑
def loginPost(request):
    request.encoding='utf-8'
    ctx ={}
    if not re.match('^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$',request.POST['phone_email']):
        ctx["msg"]="邮箱格式不正确"
        return render(request, "user/login.html", ctx)
    if not models.Customer.objects.filter(email = request.POST['phone_email']):
        ctx["msg"]="用户不存在"
        return render(request, "user/login.html", ctx)
    if not request.POST['password']==request.session["code"]:
        ctx["msg"]="验证码不正确"
        return render(request, "user/login.html", ctx)
    else:
        return redirect('loan:home')

#申请逻辑
def applyPost(request):
    add = models.Customer(key='00003',title='Test Company')
    add.save()
    return render(request,'')

#注册逻辑
def signupPost(request):
    add = models.Customer(key='00003',title='Test Company')
    add.save()
    return render(request,'')