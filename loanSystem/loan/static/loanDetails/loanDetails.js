var $num = $("#num");
var $name = $("#name");

var $quota_min = $("#quota_min")
var $quota_max = $("#quota_max")
var $time_min = $("#time_min")
var $time_max = $("#time_max")
var $rate_min = $("#rate_min")
var $rate_max = $("#rate_max")
// var $quota = $("#quota");
// var $time = $("#time");
// var $rate = $("#rate");
var $way = $("#way");
var $introduction = $("#introduction");
var $fee = $("#fee");
var $repayment = $("#repayment");
var $detail = $("#detail");
var $condition = $("#condition");
var $material = $("#material");
var $objInfo = $("#info");

var $re1 = /^[0-9]*$/;//验证数字
var $re2 = /^[0-9a-zA-Z\u4e00-\u9fa5]+$///中文英文数字
var $re3 = /[\u4e00-\u9fa5]///纯中文
var $re4 = /\d+-?\d*///数字加-
var $re5 = /\d+[.]?\d*%?/g//数字加- %

// $('#rich_text1').load('../../templates/admin/loanDetails/loanRich1.html');
// $('#rich_text2').load('../../templates/admin/loanDetails/loanRich2.html');
// $('#rich_text3').load('../../templates/admin/loanDetails/loanRich3.html');

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
$quota_min.blur(function () {
    if ($re1.test($quota_min.val())) {
        $objInfo.html("贷款额度最小值格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款额度最小值格式输入错误").css("color", "red");
        $quota_min.focus();
    }
});

$quota_max.blur(function () {
    if ($re1.test($quota_max.val())) {
        $objInfo.html("贷款额度最大值格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款额度最大值格式输入错误").css("color", "red");
        $quota_max.focus();
    }
});

// //贷款期限输入信息校验
$time_min.blur(function () {
    if ($re1.test($time_min.val())) {
        $objInfo.html("贷款期限下限格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款期限下限格式输入错误").css("color", "red");
        $time_min.focus();
    }
});

$time_max.blur(function () {
    if ($re1.test($time_max.val())) {
        $objInfo.html("贷款期限上限格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款期限上限格式输入错误").css("color", "red");
        $time_max.focus();
    }
});

//贷款利率输入信息校验
$rate_min.blur(function () {
    if ($re5.test($rate_min.val())) {
        $objInfo.html("贷款利率下限格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款利率下限格式输入错误").css("color", "red");
        $rate_min.focus();
    }
});

$rate_max.blur(function () {
    if ($re5.test($rate_max.val())) {
        $objInfo.html("贷款利率上限格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款利率上限格式输入错误").css("color", "red");
        $rate_max.focus();
    }
});

//贷款方式输入信息校验
$way.blur(function () {
    if ($re3.test($way.val())) {
        $objInfo.html("贷款方式格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款方式格式输入错误").css("color", "red");
        $way.focus();
    }
});


//贷款简介输入信息校验
$introduction.blur(function () {
    if ($re3.test($introduction.val())) {
        $objInfo.html("贷款简介格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款简介格式输入错误").css("color", "red");
        $introduction.focus();
    }
});


//贷款费用输入信息校验
$fee.blur(function () {
    if ($re3.test($fee.val())) {
        $objInfo.html("贷款费用说明格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款费用说明格式输入错误").css("color", "red");
        $fee.focus();
    }
});

//还款费用输入信息校验
$repayment.blur(function () {
    if ($re3.test($repayment.val())) {
        $objInfo.html("贷款还款说明格式输入正确").css("color", "green");
    } else {
        $objInfo.html("贷款还款说明格式输入错误").css("color", "red");
        $repayment.focus();
    }
});

// 富文本编辑器

//申请条件输入信息校验
// $condition.blur(function () {
//     if ($re2.test($condition.val())) {
//         $objInfo.html("贷款申请条件格式输入正确").css("color", "green");
//     } else {
//         $objInfo.html("贷款申请条件格式输入错误").css("color", "red");
//         $condition.focus();
//     }
// });

// //详细描述输入信息校验
// $detail.blur(function () {
//     if ($re2.test($detail.val())) {
//         $objInfo.html("贷款详细描述格式输入正确").css("color", "green");
//     } else {
//         $objInfo.html("贷款详细描述格式输入错误").css("color", "red");
//         $detail.focus();
//     }
// });

// //所需材料输入信息校验
// $material.blur(function () {
//     if ($re2.test($material.val())) {
//         $objInfo.html("贷款所需材料格式输入正确").css("color", "green");
//     } else {
//         $objInfo.html("贷款所需材料格式输入错误").css("color", "red");
//         $material.focus();
//     }
// });

$("#edit_btn").click(function () {
    var $num = $("#num");
    var $name = $("#name");

    var $quota_min = $("#quota_min")
    var $quota_max = $("#quota_max")
    var $time_min = $("#time_min")
    var $time_max = $("#time_max")
    var $rate_min = $("#rate_min")
    var $rate_max = $("#rate_max")

    var $way = $("#way");
    var $introduction = $("#introduction");
    var $fee = $("#fee");
    var $repayment = $("#repayment");
    // var $detail = $("#detail");
    // var $condition = $("#condition");
    // var $material = $("#material");

    if (!$re1.test($num.val())) {
        alert('贷款编号格式输入错误');
    }
    else if (!$re3.test($name.val())) {
        alert('贷款产品格式输入错误');
    }
    else if (!$re1.test($quota_min.val())) {
        alert('贷款额度格式输入错误');
    }
    else if (!$re1.test($quota_max.val())) {
        alert('贷款额度格式输入错误');
    }
    else if (!$re1.test($time_min.val())) {
        alert('贷款期限格式输入错误');
    }
    else if (!$re1.test($time_max.val())) {
        alert('贷款期限格式输入错误');
    }
    else if (!$re5.test($rate_min.val())) {
        alert('贷款利率格式输入错误');
    }
    else if (!$re5.test($rate_max.val())) {
        alert('贷款利率格式输入错误');
    }
    else if (!$re2.test($way.val())) {
        alert('贷款方式格式输入错误');
    }
    else if (!$re3.test($introduction.val())) {
        alert('贷款简介格式输入错误');
    }
    else if (!$re3.test($fee.val())) {
        alert('贷款费用说明格式输入错误');
    }
    else if (!$re3.test($repayment.val())) {
        alert('贷款还款说明格式输入错误');
    }
    // else if (!$re2.test($condition.val())) {
    //     alert('贷款申请条件格式输入错误');
    // }
    // else if (!$re2.test($detail.val())) {
    //     alert('贷款详细描述格式输入错误');
    // }
    // else if (!$re2.test($material.val())) {
    //     alert('贷款所需材料格式输入错误');
    // }
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
        
        data.detail = CKEDITOR.instances.loanRich1.getData();
        data.condition = CKEDITOR.instances.loanRich2.getData();
        data.material = CKEDITOR.instances.loanRich3.getData();

        // data.detail = $("#detail").val();//详细描述
        // data.condition = $("#condition").val();//申请条件
        // data.material = $("#material ").val();//所需材料

        $.ajaxSetup({
            data: {
                csrfmiddlewaretoken: '{{ csrf_token }}',
            },
        });
        $.post("/loanDetailsPost/", data, function(data) {
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


$.getScript("//cdn.ckeditor.com/4.12.1/standard/ckeditor.js", function () {
    CKEDITOR.instances.loanRich1.setData("{{ credit.detail }}"); 
    CKEDITOR.instances.loanRich2.setData("{{ credit.condition }}"); 
    CKEDITOR.instances.loanRich3.setData("{{ credit.material }}"); 
    $("#cke_loanRich1_arialbl").html("");
    $("#cke_loanRich1_arialbl").html("详细描述");
    $("#cke_loanRich1_arialbl").css("color", "rgb(75, 130, 233)");
    $("#cke_loanRich2_arialbl").html("");
    $("#cke_loanRich2_arialbl").html("申请材料");
    $("#cke_loanRich2_arialbl").css("color", "rgb(75, 130, 233)");
    $("#cke_loanRich3_arialbl").html("");
    $("#cke_loanRich3_arialbl").html("所需文件");
    $("#cke_loanRich3_arialbl").css("color", "rgb(75, 130, 233)");

});
