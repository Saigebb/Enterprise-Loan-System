//搜索
$("#search_btn").click(function() {
    $("#loanManage_tbody").html('');
        data = {}
        data.search_name = $("#search_name").val();
        // console.log($("#search_name").val());
        $.post("/manage_search/", data, function(data) {
            a = eval(data); //js数组
            console.log(a);
            for (i = 0; i < a.length; i++) {
        var h="<tbody>"+
        "<tr>"+
            "<td id='loan_num'>"+"a001"+"</td>"+
            "<td id='loan_name'>"+"<a href='#'>"+"{{ x.name }}"+"</a>"+"</td>"+
            "<td id='loan_quota'>"+"{{ x.amountmin }}"+"-"+"{{ x.amountmax }}"+"</td>"+
            "<td id='loan_interest_rate'>"+"{{ x.monthirmin }}"+"-"+"{{ x.monthirmax }}"+"</td>"+
            "<td id='loan_month'>"+"{{ x.monthmin }}"+"-"+"{{ x.monthmax }}"+"</td>"+
            "<td id='loan_way'>"+"{{ x.way }}"+"</td>"+
        "</tr>"+
    "</tbody>"
    $("#loanManage_tbody").append(h);
            }
        });
})




