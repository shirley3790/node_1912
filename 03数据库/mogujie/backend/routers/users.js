const express = require('express');
const Router = express.Router(); //路由设置

//用户管理
//需求：验证用户名是否存在
let userlist = ['admin', 'lubao', 'xiaochong', 'xiaohu'];
Router.get('/checkname', (req, res) => {
    //接收前端数据
    // console.log(req);
    let {
        name
    } = req.query;
    console.log(name); //做数据库的查询
    let result = userlist.some(item => item == name);

    let data = {};
    if (result) { //真：找到，不给注册
        data = {
            type: 0,
            msg: '失败'
        }
    } else {
        data = {
            type: 1,
            msg: '成功'
        }
    }
    res.send(data); //无论失败与成功都需要响应给客户端
});

//需求：注册功能

// Router.post('/reg', express.urlencoded(), (req, res) => {
//     let obj = req.body;
//     console.log(obj);
//     res.send('成');
// });
var urlencodedParser = bodyParser.urlencoded({
    extended: false
});

Router.post('/reg', urlencodedParser, (req, res) => {
    // let obj = req.body;
    let {
        name: username,
        password
    } = req.body; //解构
    // console.log(obj);
    console.log(username, password); //把用户名和密码插入数据库
    res.send('成');
});

//商品数据
let cartlist = [{
    gid: 1,
    title: '华为',
    price: 9999
}, {
    gid: 2,
    title: '小米',
    price: 1999
}, {
    gid: 3,
    title: '锤子',
    price: 977
}];

module.exports = Router;