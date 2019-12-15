function Delete(id){
    // loan_username
    var txt = "确定删除？";
    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.confirm);
    data={};
    data.name=id;
    $('.ok').click(function(){
        $.ajaxSetup({
            data: {
                csrfmiddlewaretoken: '{{ csrf_token }}',
            },
        });
        $.post("/personnelDelPost/", data,function (data) {
            if(data=="1")
            var txt = "删除成功";
            window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.success);
        })
    });
}