//搜索
$("#search_btn").click(function () {
    $("#loanManage_tbody").html('');
    data = {}
    data.search_name = $("#search_name").val();
    // console.log($("#search_name").val());
    $.post("/manage_search/", data, function (data) {
        if (data == "0") {

        }
    });
})




