from django.shortcuts import render

# Create your views here.
def pageC(request):
    return render(request,'pageC.html')

def pageW(request):
    return render(request,'pageW.html')
def pageSyn(request):
    return render(request,'pageSyn.html')

def pageCyrilP(request):
    return render(request,'pageCyrilP.html')



