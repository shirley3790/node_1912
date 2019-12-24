const express = require('express');
const bodyParser = require('body-parser');//第三方中间件：在express里面使用

const Router = express.Router();//路由设置  Router==app

//路由设置

//直接用get()来响应前端的get请求
Router.get('/home', (req, res) => {
    res.send('首页');
});

Router.get('/login', (req, res) => {
    res.send('登陆页get');
});

//post()响应post请求
Router.post('/login', (req, res) => {
    res.send('登陆页post');
});

Router.get('/reg', (req, res) => {
    res.send('注册页');
});

//商品数据
let goodslist = [
    {
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
    }
];

Router.get('/cart', (req, res) => {
    res.send(goodslist);
});

//删除id为xx数据,
// Router.delete('/good', (req, res) => {

// });

//修改id为xx的数据
// Router.put('./good', (req, res) => {

// });

/*
    路由传参：
        * get 请求，url传参  /checkname?name=xiaohu
            * req.query 接收数据 {name : 'xiaohu'}
        * get 请求，动态路由 /checkname/xiaohu
            * req.params 接收数据 xiaohu
        * post 请求，body请求体传输数据 data : {name : "xiaohu"}
            * req.body 接收数据  {name : "xiaohu"}
                * 方法一：需要插入一个中间件 express.urlencoded() 否则拿不到数据
                * 方法二：安装第三方中间件body-parser，配置一下调用即可
        * delete
        * put/patch
*/
//需求：验证用户名是否存在
let userlist = ['admin', 'lubao', 'xiaochong', 'xiaohu'];
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
var urlencodedParser = bodyParser.urlencoded({ extended: false });
Router.post('/reg', urlencodedParser, (req, res) => {
    // let obj = req.body;
    let { name: username, password } = req.body;//解构
    // console.log(obj);
    console.log(username, password);//把用户名和密码插入数据库
    res.send('成');
});

//商品数据
let cartlist = [
    {
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
    }
];
//需求：查询gid=2的商品数据，动态路由  /goods/2
Router.get('/goods/:gid', (req, res) => {
    let { gid } = req.params; //{ gid: 2 }
    // console.log(obj);
    let newarr = cartlist.filter(item => item.gid == gid);
    let data = {};
    if (newarr.length) {
        //找到数据
        data = {
            type: 1,
            msg: '成功',
            list: newarr
        }
    } else {
        //没有找到数据
        data = {
            type: 0,
            msg: '失败',
            list: []
        }
    }

    res.send(data);
});

module.exports = Router;