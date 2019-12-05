let nameInput = $("#name");
let codeInput = $("#creditCode");
let flagOne = [false,false,false,false,false];

nameInput.blur(function () {
    if(nameInput.val() == null || nameInput.val() == ""){
        nameInput.css("border","1px #f00 solid");
        $("#nameHint").html("企业名称不能为空").css("color","red");
        flagOne[0] = false;
    }
    else{
        nameInput.css("border","1px #0f0 solid");
        $("#nameHint").html("");
        flagOne[0] = true;
    }
});

codeInput.blur(function () {
    if(codeInput.val() == null || codeInput.val() == ""){
        codeInput.css("border","1px #f00 solid");
        $("#codeHint").html("社会信用代码不能为空").css("color","red");
        flagOne[1] = false;
    }
    else if(codeInput.length != 18){
        codeInput.css("border","1px #f00 solid");
        $("#codeHint").html("社会信用代码错误");
        flagOne[1] = false;
    }
    else{
        nameInput.css("border","1px #0f0 solid");
        $("#codeHint").html("");
        flagOne[1] = true;
    }
});

if($("#stepOne").hasClass("active")){
    console.log(222);
    $("#stepTwo").addClass("disabled");
    $("#stepThree").addClass("disabled");
    $("#stepFour").addClass("disabled");
};

if($("#stepTwo").hasClass("active")){
    console.log(222);
    $("#stepThree").addClass("disabled");
    $("#stepFour").addClass("disabled");
};

if($("#stepThree").hasClass("active")){
    console.log(222);
    $("#stepFour").addClass("disabled");
};

$("#nextStep1").click(function () {
    $("#step1").addClass("fade");
    $("#step1").removeClass("active");
    $("#step2").addClass("active");
    $("#step2").addClass("show");
    $("#stepOne").removeClass("active");
    $("#stepTwo").addClass("active");

    // $("#step1").addClass()
});

$("#nextStep2").click(function () {
    $("#step2").addClass("fade");
    $("#step2").removeClass("active");
    $("#step3").addClass("active");
    $("#step3").addClass("show");
    $("#stepTwo").removeClass("disabled");
    $("#stepTwo").removeClass("active");
    $("#stepThree").addClass("active");
});

$("#nextStep3").click(function () {
    $("#step3").addClass("fade");
    $("#step3").removeClass("active");
    $("#step4").addClass("active");
    $("#step4").addClass("show");
    $("#stepThree").removeClass("disabled");
    $("#stepThree").removeClass("active");
    $("#stepFour").addClass("active");
});

function upImage(target){
    let fileSize = 0;
    if(!target.files){
        let filePath = target.value;
        let fileSystem = new ActiveXObject("Scripting.FileSystemObject");
        let file = fileSystem.GetFile(filePath);
        fileSize = file.size;
    }
    else{
        fileSize = target.files[0].size;
    }
    let size = fileSize/1024;
    if(size < 0){
        let txt = "";
        window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.error);
        $('.ok').click(function(){
            window.location.reload();
        });
    }
}


