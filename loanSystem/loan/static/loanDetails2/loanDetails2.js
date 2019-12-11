var $num = $("#num");
var $name = $("#name");
var $quota = $("#quota");
var $time = $("#time");
var $rate = $("#rate");
var $way = $("#way");
var $introduction = $("#introduction");
var $fee = $("#fee");
var $repayment = $("#repayment");
var $detail = $("#detail");
var $condition = $("#condition");
var $material = $("#material");
var $objInfo = $("#info");

var $re1=/^[0-9]*$/;//验证数字
var $re2=/^[0-9a-zA-Z\u4e00-\u9fa5]+$///中文英文数字
var $re3=/[\u4e00-\u9fa5]///纯中文
var $re4=/\d+-?\d*///数字加-
var $re5=/-?\d+[.]?\d*%?/g//数字加- %

//贷款编号输入信息校验
$num.blur(function () {
    if ($re1.test($num.val())) {
        $objInfo.html("贷款编号格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款编号格式输入错误").css("color", "red");
        $num.focus();
    }
});

//贷款产品输入信息校验
$name.blur(function () {
    if ($re3.test($name.val())) {
        $objInfo.html("贷款产品格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款产品格式输入错误").css("color", "red");
        $name.focus();
    }
});

//贷款额度输入信息校验
$quota.blur(function () {
    if ($re4.test($quota.val())) {
        $objInfo.html("贷款额度格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款额度格式输入错误").css("color", "red");
        $quota.focus();
    }
});

//贷款期限输入信息校验
$time.blur(function () {
    if ($re4.test($time.val())) {
        $objInfo.html("贷款期限格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款期限格式输入错误").css("color", "red");
        $time.focus();
    }
});

//贷款利率输入信息校验
$rate.blur(function () {
    if ($re5.test($rate.val())) {
        $objInfo.html("贷款利率格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款利率格式输入错误").css("color", "red");
        $rate.focus();
    }
});

//贷款方式输入信息校验
$way.blur(function () {
    if ($re2.test($way.val())) {
        $objInfo.html("贷款方式格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款方式格式输入错误").css("color", "red");
        $way.focus();
    }
});


//贷款简介输入信息校验
$introduction.blur(function () {
    if ($re2.test($introduction.val())) {
        $objInfo.html("贷款简介格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款简介格式输入错误").css("color", "red");
        $introduction.focus();
    }
});


//贷款费用输入信息校验
$fee.blur(function () {
    if ($re2.test($fee.val())) {
        $objInfo.html("贷款费用说明格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款费用说明格式输入错误").css("color", "red");
        $fee.focus();
    }
});

//还款费用输入信息校验
$repayment.blur(function () {
    if ($re2.test($repayment.val())) {
        $objInfo.html("贷款还款说明格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款还款说明格式输入错误").css("color", "red");
        $repayment.focus();
    }
});

//申请条件输入信息校验
$condition.blur(function () {
    if ($re2.test($condition.val())) {
        $objInfo.html("贷款申请条件格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款申请条件格式输入错误").css("color", "red");
        $condition.focus();
    }
});

//详细描述输入信息校验
$detail.blur(function () {
    if ($re2.test($detail.val())) {
        $objInfo.html("贷款详细描述格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款详细描述格式输入错误").css("color", "red");
        $detail.focus();
    }
});

//所需材料输入信息校验
$material.blur(function () {
    if ($re2.test($material.val())) {
        $objInfo.html("贷款所需材料格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款所需材料格式输入错误").css("color", "red");
        $material.focus();
    }
});

$("#add_btn").click(function() {
    var $num = $("#num");
    var $name = $("#name");
    var $quota = $("#quota");
    var $time = $("#time");
    var $rate = $("#rate");
    var $way = $("#way");
    var $introduction = $("#introduction");
    var $fee = $("#fee");
    var $repayment = $("#repayment");
    var $detail = $("#detail");
    var $condition = $("#condition");
    var $material = $("#material");

    if (!$re1.test($num.val())) {
        alert('贷款编号格式输入错误');
    }
    else if (!$re3.test($name.val())) {
        alert('贷款产品格式输入错误');
    }
    else if (!$re4.test($quota.val())) {
        alert('贷款额度格式输入错误');
    }
    else if (!$re4.test($time.val())) {
        alert('贷款期限格式输入错误');
    }
    else if (!$re5.test($rate.val())) {
        alert('贷款利率格式输入错误');
    }
    else if (!$re2.test($way.val())) {
        alert('贷款方式格式输入错误');
    }
    else if (!$re2.test($introduction.val())) {
        alert('贷款简介格式输入错误');
    }
    else if (!$re2.test($fee.val())) {
        alert('贷款费用说明格式输入错误');
    }
    else if (!$re2.test($repayment.val())) {
        alert('贷款还款说明格式输入错误');
    }
    else if (!$re2.test($condition.val())) {
        alert('贷款申请条件格式输入错误');
    }
    else if (!$re2.test($detail.val())) {
        alert('贷款详细描述格式输入错误');
    }
    else if (!$re2.test($material.val())) {
        alert('贷款所需材料格式输入错误');
    }
    else {
        data = {}
        data.num = $("#num").val();//编号
        data.name = $("#name").val();//贷款产品
        data.quota = $("#quota").val();//贷款额度
        data.time = $("#time").val();//贷款期限
        data.rate = $("#rate").val();//利率
        data.way = $("#way").val();//还款付息方式
        data.introduction = $("#introduction").val();//简介
        data.fee = $("#fee").val();//费用说明
        data.repayment = $("#repayment").val();//还款说明
        data.detail = $("#detail").val();//详细描述
        data.condition = $("#condition").val();//申请条件
        data.material = $("#material ").val();//所需材料

        $.ajaxSetup({
            data: {
                csrfmiddlewaretoken: '{{ csrf_token }}',
            },
        });
        $.post("/addloanPost/", data, function(data) {
            if (data == '0') {
                alert('编辑失败');
                window.location.href ="/loanDetails/";      
            }
            else if (data == '1') {
                alert('编辑成功');
                window.location.href ="/loanManage/";      
            }
        })
    }
})
