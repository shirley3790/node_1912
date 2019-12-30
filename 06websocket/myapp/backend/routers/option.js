//子路由

const express = require('express');
const Router = express.Router();//路由设置  Router==app
const proxy = require('http-proxy-middleware');

//需求：我在1920端口开放这个接口给1912端口访问  /option/data 出错：因为这样是存在跨域的，前端无法获取数据
Router.get('/data', (req, res) => {
    let list = [
        {
            name: '婧婧',
            adr: '百色'
        }, {
            name: '老谢',
            adr: '钦州'
        }
    ];
    res.send(list);
});

//需求：jsonp接口开放， 绝对是get请求  前端：http://localhost:1920/option/jsonp?callback=getdata
//后端：getdata(data) 实参
Router.get('/jsonp', (req, res) => {
    let { callback } = req.query;//用这个来接收函数名
    let list = [
        {
            name: '婧婧',
            adr: '百色'
        }, {
            name: '老谢',
            adr: '钦州'
        }
    ];
    let str = JSON.stringify(list);
    res.send(`${callback}(${str})`);//getdata(list)
});

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

//需求:cors接口开放,设置响应头
Router.get('/cors', (req, res) => {
    // console.log(req.get('aaa'));//获取请求头数据
    let str = '元旦放假一天，开不开心';
    let arr = [
        {
            name: '夏美女',
            adr: '湖南'
        }
    ];
    // res.header('Access-Control-Allow-Origin', '*');
    res.send(arr);
});


//需求：服务器代理
//服务器代理 发送请求：http://localhost:1920/option/sinaapi => https://m.weibo.cn/option/sinaapi/api/config/list =>https://m.weibo.cn/api/config/list
Router.use('/sinaapi', proxy({
    "target": "https://m.weibo.cn", //你要代理的网址  https://m.weibo.cn/api/config/list
    "changeOrigin": true,
    "pathRewrite": { //重写路径
        "^/option/sinaapi": "/"
    }
}));

module.exports = Router;