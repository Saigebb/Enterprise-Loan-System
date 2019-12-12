var $username = $("#username");
var $password = $("#password");
var $objInfo = $("#info");
var $login_btn = $("#login_btn");
var $re1 = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$/;
var $re2 = /^(\w){6,20}$///字母数字下划线;
//手机号码输入信息校验
$username.blur(function () {
    // if (isCorrectEmail_text($email_text_info))
    if ($re1.test($username.val())) {
        $objInfo.html("手机号码格式输入正确").css("color", "green");
    } else {
        $objInfo.html("手机号码格式输入错误").css("color", "red");
        $username.focus();
    }
});

//密码输入信息校验
$password.blur(function () {
    // if (isCorrectEmail_text($email_text_info))
    if ($re2.test($password.val())) {
        $objInfo.html("密码格式输入正确").css("color", "green");
    } else {
        $objInfo.html("密码码格式输入错误").css("color", "red");
        $password.focus();
    }
});

$("#login_btn").click(function() {
    if (!$re1.test($username.val())) {
        alert('手机号码格式错误');
    }
    else if (!$re2.test($password.val())) {
        alert('密码格式错误');
    } else {
        data = {}
        data.username = $("#username").val();
        data.password = $("#password").val();
        $.ajaxSetup({
            data: {
                csrfmiddlewaretoken: '{{ csrf_token }}',
            },
        });
        $.post("//", data, function(data) {
            if (data == '0') {
            }
        })
    }
})


