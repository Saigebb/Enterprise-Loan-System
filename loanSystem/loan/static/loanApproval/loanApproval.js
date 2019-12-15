//state = 0,1,2,3,4,5分别对应提交申请,正在审核,申请成功,拨放贷款,待还贷款,还清贷款;
let data = [
    {
        'id':'0001', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'0'
    },
    {
        'id':'0002', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'0'
    },
    {
        'id':'0003', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'0'
    },
    {
        'id':'0004', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'1'
    },
    {
        'id':'0010', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'1'
    },
    {
        'id':'0011', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'1'
    },
    {
        'id':'0012', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'1'
    },
    {
        'id':'0013', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'1'
    },
    {
        'id':'0005', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'2'
    },
    {
        'id':'0023', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'2'
    },
    {
        'id':'0024', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'2'
    },
    {
        'id':'0018', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'2'
    },
    {
        'id':'0006', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'3'
    },
    {
        'id':'0014', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'3'
    },
    {
        'id':'0015', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'3'
    },
    {
        'id':'0007', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'4'
    },
    {
        'id':'0016', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'4'
    },
    {
        'id':'0017', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'4'
    },
    {
        'id':'0018', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'4'
    },
    {
        'id':'0008', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'5'
    },
    {
        'id':'0009', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'5'
    },
    {
        'id':'0019', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'5'
    },
    {
        'id':'0020', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'5'
    },
    {
        'id':'0021', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'5'
    },
    {
        'id':'0022', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'5'
    },
];
let state = ["提交申请","正在审核","申请成功","拨放贷款","待还贷款","还清贷款"];
// console.log(data);
let datas = new Array();

for(let i in data){
    // console.log(1);
    switch (data[i].state) {
        case '0':
            fillTable1(data[i]);
            break;
        case '1':
            fillTable(data[i]);
            break;
        case '2':
            fillTable(data[i]);
            break;
        case '3':
            fillTable(data[i]);
            break;
        case '4':
            fillTable(data[i]);
            break;
        case '5':
            fillTable(data[i]);
            break;

    }
}

function fillTable(datas){
    // console.log(2);
    console.log(datas.state);
    let content = `
        <tr id="${datas.id}">
            <td>${datas.id}</td>
            <td><a href="/loanApprovalDetails/?id=${datas.id}" style="color:#2962ff">${datas.product}</a></td>
            <td>${datas.money}</td>
            <td>${datas.company}</td>
            <td>${datas.month}个月</td>
            <td>
                <div class="dropdown">
                    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
                        ${state[datas.state-1]}
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" onclick="pass(${datas.id})" style="text-align:center;font-size:16px">${state[datas.state]}</a>
                    </div>
                </div>
            </td>
        </tr>
    `;
    let appendclass = `.state${datas.state}`;
    $(appendclass).append(content);
}


function fillTable1(datas){
    // console.log(2);
    let content = `
        <tr id="${datas.id}">
            <td>${datas.id}</td>
            <td><a href="/loanApprovalDetails/?id=${datas.id}">${datas.product}</a></td>
            <td>${datas.money}</td>
            <td>${datas.company}</td>
            <td>${datas.month}个月</td>
            <td>
                <div class="dropdown">
                    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
                       提交申请
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" onclick="pass(${datas.id})" href="#" style="text-align:center;font-size:16px">${state[datas.state]}</a>
                    </div>
                </div>
            </td>
        </tr>
    `;
    let appendclass = `.state0`;
    $(appendclass).append(content);
}
//审批按钮

function pass(id) {

    let txt = "确定通过？";
    window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.confirm);
    $('.ok').click(function(){
        for (let i in data){
            if(data[i].id == id){
                data[i].state++;
                dataId = `#${data[i].id}`;
                $(dataId).css("display","none");
                fillTable(data[i])
            }
        }
    });
}