//state = 0,1,2,3,4,5分别对应提交申请,正在审核,申请成功,拨放贷款,待还贷款,还清贷款;
let data = [
    {
        'id':'001', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'0'
    },
    {
        'id':'001', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'0'
    },
    {
        'id':'001', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'0'
    },
    {
        'id':'001', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'1'
    },
    {
        'id':'001', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'2'
    },
    {
        'id':'001', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'3'
    },
    {
        'id':'001', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'4'
    },
    {
        'id':'001', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'5'
    },
    {
        'id':'001', 'product': '阳光贷', 'money': '100', 'company':'XX食品有限公司', 'month':'24',
        'state':'5'
    },
];
let state = ["提交申请","正在审核","申请成功","拨放贷款","待还贷款","还清贷款"];
console.log(data);

for(let i in data){
    console.log(1);
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
    console.log(2);
    let content = `
        <tr>
            <td>${datas.id}</td>
            <td><a href="/loanDetails/?id=${datas.id}">${datas.product}</a></td>
            <td>${datas.money}</td>
            <td>${datas.company}</td>
            <td>${datas.month}个月</td>
            <td>
                <div class="dropdown">
                    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
                        ${state[datas.state-1]}
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#" style="text-align:center;font-size:16px">${state[datas.state]}</a>
                    </div>
                </div>
            </td>
        </tr>
    `;
    let appendclass = `.state${datas.state}`;
    $(appendclass).append(content);
}
function fillTable1(datas){
    console.log(2);
    let content = `
        <tr>
            <td>${datas.id}</td>
            <td><a href="/loanDetails/?id=${datas.id}">${datas.product}</a></td>
            <td>${datas.money}</td>
            <td>${datas.company}</td>
            <td>${datas.month}个月</td>
            <td>
                <div class="dropdown">
                    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
                       提交申请
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#" style="text-align:center;font-size:16px">${state[datas.state]}</a>
                    </div>
                </div>
            </td>
        </tr>
    `;
    let appendclass = `.state${datas.state}`;
    $(appendclass).append(content);
}
