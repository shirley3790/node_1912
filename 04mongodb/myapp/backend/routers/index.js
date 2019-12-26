//主路由
const express = require('express');

const usersRouter = require('./users');//引入子路由
const goodsRouter = require('./goods');//引入子路由
const Router = express.Router();//路由设置  Router==app

/*
    路由设置应该更细致，模块化开发
        * 用户管理 /uers =>进入该路由
        * 商品管理 /goods => 进入该路由
        * 订单管理 /orders
*/

Router.use('/users', usersRouter);//mysql做数据库
Router.use('/goods', goodsRouter);//mongodb做数据库

module.exports = Router;