$("#Approved_btn").click(function(){
    $.post("/loanPost/", data, function(data) {
        if (data == '1') {
            alert('审批通过');
        }
        else{
            alert('数据库提交失败');
        }
    })
})
$("#Approved_no_btn").click(function(){
    window.location.href="/loanApproval/";
})