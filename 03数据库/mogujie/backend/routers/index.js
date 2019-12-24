//主路由
const express = require('express');
const bodyParser = require('body-parser'); //第三方中间件：在express里面使用
const usersRouter = require('./users'); //引入子路由
const goodsRouter = require('./goods'); //引入子路由

const Router = express.Router(); //路由设置  Router==app

Router.use('/users', usersRouter); //使用子路由
Router.use('/goods', goodsRouter); //使用子路由

module.exports = Router;