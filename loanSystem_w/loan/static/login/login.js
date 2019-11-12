var $btn = $("#btn");
var $email_text = $("#email_text");
var $objInfo = $("#info");

//邮箱的校验
function isCorrectEmail_text(s) {
    var $re = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
    if (!$re.test(s)) return false;
    return true;
}

//邮箱输入信息校验
email_text.blur(function() {
    var $email_text_info = $email_text.val();
    if (isCorrectEmail_text($email_text_info)) {
        $objInfo.html("邮箱输入正确").css("color", "green");
    } else {
        $objInfo.html("邮箱输入错误").css("color", "red");
        $email_text.focus();
    }
});

$("#btn").click(function() {
    if (!isCorrectEmail_text($("#email_text").val())) {
        alert('邮箱格式错误');
    } else {
        data = {}
        data.email = $("#email_text").val();
        console.log($("#email_text").val());
        $.ajaxSetup({
            data: {
                csrfmiddlewaretoken: '{{ csrf_token }}',
            },
        });
        $.post("http://127.0.0.1:8000/sendMail/", data, function(data) {
            if (data == '0') {
                alert('邮件没有发送成功');
            }
        })
    }
})