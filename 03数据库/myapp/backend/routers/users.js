//子路由
const express = require('express');
const query = require('../db/mysql');//自定义一个模块
// console.log(query);
const Router = express.Router();//路由设置  Router==app
//提取body请求体数据用到的中间件，需要配置参数才能使用
const bodyParser = require('body-parser');//第三方中间件：在express里面使用
var urlencodedParser = bodyParser.urlencoded({ extended: false });

/*
    用户管理：
        * 验证用户名是否存在
        * 注册
        * 登陆
        * 修改密码
        * 删除xx用户
        * 清空用户
        * 数据渲染
        * 分页
*/

//需求：查询所有的用户信息
Router.get('/all', (req, res) => {
    let str = 'SELECT * FROM userinf';
    //初级版
    // query(str, data => {
    //     //形参
    //     // console.log(data);
    //     res.send(data);//把查询到的数据响应给前端
    // });

    //高级版
    
});

//需求：验证用户名是否存在
// let userlist = ['admin', 'lubao', 'xiaochong', 'xiaohu'];
//  /users/checkname
Router.get('/checkname', (req, res) => {
    //接收前端数据
    // console.log(req);
    let { name } = req.query;
    console.log(name);//做数据库的查询
    let result = userlist.some(item => item == name);

    let data = {};
    if (result) {//真：找到，不给注册
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
    res.send(data);//无论失败与成功都需要响应给客户端
});

//需求：注册功能

// Router.post('/reg', express.urlencoded(), (req, res) => {
//     let obj = req.body;
//     console.log(obj);
//     res.send('成');
// });

Router.post('/reg', urlencodedParser, (req, res) => {
    // let obj = req.body;
    let { name: username, password } = req.body;//解构
    // console.log(obj);
    console.log(username, password);//把用户名和密码插入数据库
    res.send('成');
});

module.exports = Router;


