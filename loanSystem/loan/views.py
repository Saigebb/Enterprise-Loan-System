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
    msg={}
    if not request.session.get("user"):
        msg["login"]=0
        return render(request, 'user/login/login.html',msg)
    else:
        msg["login"]=1
        return redirect('loan:home')

def aboutus(request):
    msg={}
    if not request.session.get("user"):
        msg["login"]=0
    else:
        msg["login"]=1
    return render(request, 'user/aboutus/aboutus.html',msg)

def connect(request):
    msg={}
    if not request.session.get("user"):
        msg["login"]=0
    else:
        msg["login"]=1
    return render(request, 'user/aboutus/connect.html',msg)

def company(request):
    msg={}
    if not request.session.get("user"):
        msg["login"]=0
    else:
        msg["login"]=1
    return render(request, 'user/aboutus/company.html',msg)

def home(request):
    msg={}
    if not request.session.get("user"):
        msg["login"]=0
    else:
        msg["login"]=1
    return render(request, 'user/home/home.html',msg)

def loans(request):
    msg={}
    if not request.session.get("user"):
        msg["login"]=0
    else:
        msg["login"]=1
    credit=models.Credit.objects.all()
    mortgage=models.Mortgage.objects.all()
    # print(credit[1].monthmin)
    return render(request, 'user/loans/loans.html',
                  {'credit': credit,
                   'mortgage': mortgage,
                   "msg":msg})

def apply(request):
    msg={}
    if not request.session.get("user"):
        msg["login"]=0
        return redirect('loan:login')
    else:
        msg["login"]=1
    credit=models.Credit.objects.filter(id = request.GET['id'])
    print (credit)
    for x in credit:
        print (x.detail)
    return render(request, 'user/apply/apply.html',
                  {'credit': credit[0],
                   "msg":msg})

def register(request):
    return render(request, 'user/register/register.html')

def certification(request):
    msg={}
    if not request.session.get("user"):
        msg["login"]=0
        return redirect('loan:login')
    else:
        msg["login"]=1
        return render(request, 'user/certification/certification.html',msg)

def myLoan(request):
    msg={}
    if not request.session.get("user"):
        msg["login"]=0
        return redirect('loan:login')
    else:
        msg["login"]=1
        return render(request, 'user/myLoan/myLoan.html')

def personal(request):
    msg={}
    if not request.session.get("user"):
        msg["login"]=0
        return redirect('loan:login')
    else:
        msg["login"]=1
        msg["user"]=request.session["user"]
        return render(request, 'user/personal/personal.html',msg)

def certify(request):
    return render(request, 'user/certify/certify.html')

def applyForm(request):
    msg={}
    if not request.session.get("user"):
        msg["login"]=0
        return redirect('loan:login')
    else:
        msg["login"]=1
        return render(request, 'user/apply/applyForm.html',msg)

def code():  
    code=""
    while len(code) < 5:
        code += str(random.randint(0, 10))
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

#注册逻辑
def signupPost(request):
    request.encoding='utf-8'
    ctx ={}
    if not re.match('^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$',request.POST['phone_email']):
        ctx["msg"]="邮箱格式不正确"
        return render(request, "user/register/register.html", ctx)
    if not re.match('^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$',request.POST['idCard']):
        ctx["msg"]="身份证格式不正确"
        return render(request, "user/register/register.html", ctx)
    if not re.match('^(13[0-9]{9})|(15[0-9]{9})|(17[0-9]{9})|(18[0-9]{9})|(19[0-9]{9})$',request.POST['phone']):
        ctx["msg"]="手机号格式不正确"
        return render(request, "user/register/register.html", ctx)
    if not request.POST['password']==request.session["code"]:
        ctx["msg"]="验证码不正确"
        return render(request, "user/register/register.html", ctx)
    else:
        add = models.Customer(email=request.POST['phone_email'],cname=request.POST['username'],idcard=request.POST['idCard'],phone=request.POST['phone'])
        add.save()
        # models.Customer.objects.create(id=null,email=request.email_text,idcard=request.idCard,phone=request.phone)
        return redirect('loan:login')

#登录逻辑
def loginPost(request):
    request.encoding='utf-8'
    ctx ={}
    if not re.match('^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$',request.POST['phone_email']):
        ctx["msg"]="邮箱格式不正确"
        return render(request, "user/login/login.html", ctx)
    if not models.Customer.objects.filter(email = request.POST['phone_email']):
        ctx["msg"]="用户不存在"
        return render(request, "user/login/login.html", ctx)
    if not request.POST['password']==request.session["code"]:
        ctx["msg"]="验证码不正确"
        return render(request, "user/login/login.html", ctx)
    else:
        request.session["user"]=request.POST['phone_email']
        return redirect('loan:home')

#修改邮箱
def personalPost(request):
    request.encoding='utf-8'
    ctx ={}
    if not request.POST['code']==request.session["code"]:
        ctx["msg"]="验证码不正确"
        return render(request, "user/login/login.html", ctx)
    else:
        user = models.Customer.objects.get(email=request.session["user"])
        user.email = request.POST['phone_email']
        user.save()
        return render(request, 'user/personal/personal.html')

#企业认证
def sendCertification(request):
    request.encoding='utf-8'
    user = models.Customer.objects.get(email=request.session["user"])
    user.company=request.POST['Company_Name']
    user.credit_id=request.POST['Credit_code']
    user.legal_name=request.POST['Legal_representative_name']
    user.legal_id=request.POST['Legal_representative_id']
    user.card=request.POST['Legal_representative_card']
    user.phone=request.POST['Bank_phone']
    #user.save()
    if user.save():
            return HttpResponse('0', status=200)
    else:
            return HttpResponse('1', status=200)


def sidebar(request):
    request.encoding='utf-8'
    return render(request, 'admin/sidebar.html')