//主路由
const express = require('express');

const usersRouter = require('./users'); //引入子路由
const goodsRouter = require('./goods'); //引入子路由
const optionsRouter = require('./option'); //引入子路由
const uploadRouter = require('./upload'); //引入子路由


const Router = express.Router(); //路由设置  Router==app

//提取body请求体数据用到的中间件，需要配置参数才能使用
const bodyParser = require('body-parser');//第三方中间件：在express里面使用
var urlencodedParser = bodyParser.urlencoded({ extended: false });

Router.use(urlencodedParser, express.json());

//把这个路由配置放在所有路由的前面，方便调用next操作
Router.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Content-Type,Content-Length, Authorization, Accept,X-Requested-With");
    res.header("Access-Control-Allow-Methods", "PUT,PATCH,POST,GET,DELETE,OPTIONS");

    // 跨域请求CORS中的预请求
    if (req.method == "OPTIONS") { //特殊请求：发送了请求头的那些请求
        res.sendStatus(200); /*让options请求快速返回*/
    } else {
        next();
    }
})

/*
    路由设置应该更细致，模块化开发
        * 用户管理 /uers =>进入该路由
        * 商品管理 /goods => 进入该路由
        * 订单管理 /orders
*/

Router.use('/users', usersRouter); //mysql做数据库
Router.use('/goods', goodsRouter); //mongodb做数据库
Router.use('/option', optionsRouter); //实现跨域请求
Router.use('/upload', uploadRouter); //实现跨域请求


module.exports = Router;