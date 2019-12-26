//子路由
const express = require('express');
const Router = express.Router(); //路由设置  Router==app
const proxy = require('http-proxy-middleware');

//jsonp跨域
Router.get('/jsonp', (req, res) => {
    let {
        callback
    } = req.query;
    console.log(callback);

    let data = {
        name: '静静',
        age: 18
    };
    //getdata
    res.send(`${callback}(${JSON.stringify(data)})`);
});

//CORS跨域
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

//5.cors 开放这里的接口
Router.get('/cors', (req, res) => {
    let data = '准备过春节啦，倒计时开始';
    res.header('Access-Control-Allow-Origin', '*');
    res.send(data);
});


//服务器代理
Router.use('/sinaapi', proxy({
    "target": "https://m.weibo.cn", //你要代理的网址  https://m.weibo.cn/api/config/list
    "changeOrigin": true,
    "pathRewrite": { //重写路径
        "^/option/sinaapi": "/"
    }
}));

module.exports = Router;