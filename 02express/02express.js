//需求：借助第三方模块 express 快速搭建静态资源服务器

//引入模块
const express = require('express');
//调用方法生成对象
const app = express();//开启服务器

//借助中间件开启静态资源服务器
app.use(express.static('./'));//以当前目录为站点根目录

app.listen(1912, () => {
    console.log('服务器成功开启,请访问1912端口');
});