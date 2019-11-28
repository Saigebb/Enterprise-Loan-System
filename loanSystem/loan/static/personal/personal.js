$('#btn').click(function () {
    var count = 30;
    var countdown = setInterval(CountDown, 500);
    function CountDown() {
        $("#btn").attr("disabled", true);
        $("#btn").val( count + " seconds!");
        $("#btn").css({'background-color':'#0b76d3'})
        $("#btn").css({'color':'white'})
        if (count == 0) {
            $("#btn").val("发送验证码").removeAttr("disabled");
            clearInterval(countdown);
            $("#btn").css({'background-color':'#ebebeb'})
            $("#btn").css({'color':'#696969'})
        }
        count--;
    }
})