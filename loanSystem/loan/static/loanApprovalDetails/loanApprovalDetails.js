$("#Approved_btn").click(function(){
    $.post("//", data, function(data) {
        if (data == '0') {
            alert('审批通过');
        }
    })
})
$("#Approved_no_btn").click(function(){
    $.post("//", data, function(data) {
        if (data == '0') {
            alert('审批不通过');
        }
    })
})