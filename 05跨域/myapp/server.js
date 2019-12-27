//需求：借助第三方模块 express 快速搭建静态资源服务器

//引入模块
const express = require('express');
// const allRouter = require('./routers');//不写index.js是没有问题的，因为会自动的帮你找index.js
const allRouter = require('./backend/routers/index'); //不写index.js是没有问题的，因为会自动的帮你找index.js
//调用方法生成对象

const app = express();

//借助中间件开启静态资源服务器

app.use(express.static('./')); //以当前目录为站点根目录
// app.use(express.static('./', { index: './adminsystem/admin.html' }));//以当前目录为站点根目录
app.use(allRouter); //使用allRouter中间件，实现路由效果

app.listen(1920, () => {
    console.log('服务器成功开启,请访问1920端口');
});