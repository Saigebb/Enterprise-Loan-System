from django.shortcuts import render
from django.views.decorators import csrf
from django.shortcuts import redirect  #重新定向模块
import re
# Create your views here.

def login(request):
    return render(request, 'user/login.html')

def aboutus(request):
    return render(request, 'user/aboutus.html')


# 接收POST请求数据
# def search_post(request):
#     request.encoding='utf-8'
#     ctx ={}
#     # if re.match('\w+',request.POST['password']):
#     #     return  redirect('home')
#     if request.POST:
#         if re.match('^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$', request.POST['phone_email']):
#             ctx['checkName'] = 1
#             if request.POST['phone_email']=='413469406@qq.com':
#                 ctx['name'] = 1
#                 if re.match('\w+', request.POST['password']):
#                     ctx['checkPsd'] = 1
#                     if request.POST['password'] == '123456':
#                         ctx['psd'] = 1
#                         return redirect('home')
#                     else:
#                         ctx['name'] = 0
#                 else:
#                     ctx['checkPsd'] = 0
#             else:
#                 ctx['name'] = 0
#         else:
#             ctx['checkName'] = 0
#         #ctx['name'] = request.POST['phone_email']
#         #ctx['psd'] = request.POST['password']
#     return render(request, "login.html", ctx)
#     #return render(request, "hello.html", ctx)