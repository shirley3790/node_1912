//需求：借助第三方模块 express 快速搭建静态资源服务器

//引入模块
const express = require('express');
//调用方法生成对象
const app = express();

//借助中间件开启静态资源服务器

app.use(express.static('./'));//以当前目录为站点根目录
/*
    * 缓存：静态资源:html、css、js、视频、音频、图片(数据部分不会缓存，因为是靠ajax请求回来的)
        * 强制缓存：maxAge : 1h 客户端发送请求后，静态资源已经载入本地，在一个小时内再发送请求，是不会请求静态资源，会从缓存读取数据，不会浪费服务器资源；第一次：请求新的 200 第二次起：如果还在缓存时间内，在本地缓存读取数据。200 cache
        * 协商缓存：maxAge : 1h 第二次请求，已经超过了缓存时间,比如：a.jpg 已经请求过了，现在要请求第二次资源，服务器和你协商，你要的资源，服务器这边还未改动过，a.jpg,让你(客户端)还是去缓存读取 304.
        * 离线缓存：访问过某个网页，断网，打开，页面还在。在联网的情况下，设置一个文件，让页面的内容自动载入离线缓存里面 cache storage。离线的时候，还可以看到。小说站。
*/
// app.use(express.static('./', { index: './list.html', maxAge: 3600000 }));//以当前目录为站点根目录

/*
    app.use([path],...middlewares)
        * path 路径，路由，选写
        * middlewares 中间件 
            * 中间件就是一个函数
            * 这个函数能帮我们处理数据
            * 在请求和响应之前调用
            * 提高开发效率
            * 里面是一个回调，回调里面有三个参数
                * req
                * res
                * next：进入下一个中间件
    分类：
        * 自定义中间件 ：自己写的
        * 第三方中间件 ：需要npm安装引入的
        * 内置中间件： express模块自带
            * express.static() 开启静态资源服务器
*/
// app.use('/good', (req, res, next) => {
//     //req 请求对象
//     //res 响应对象
//     // res.send('欢迎访问服务器');//原生里面 res.write() res.end() 结合
//     // console.log('欢迎访问服务器');
//     // next();
// });

// app.use((req, res, next) => {
//     //req 请求对象
//     //res 响应对象
//     console.log('这是h51912');
//     // res.send('这是h51912');//原生里面 res.write() res.end() 结合
// });

//多个中间件一起写：但是工作中很少用use方法，因为use是什么请求方式都可以进入
// app.use('/good', (req, res, next) => {
//     console.log('欢迎访问服务器');
//     // next();
// }, (req, res) => {
//     console.log('这是h51912');
// });

//restful接口规范 ： 根据不同的请求类型和路径响应不同的数据接口
//直接用get()来响应前端的get请求
app.get('/home', (req, res) => {
    res.send('首页');//内置了write()和end()
    // res.send('首页');//内置了write()和end() 报错，不要写两个send()
});

app.get('/login', (req, res) => {
    res.send('登陆页get');
});

//post()响应post请求
app.post('/login', (req, res) => {
    res.send('登陆页post');
});

app.get('/reg', (req, res) => {
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

app.get('/cart', (req, res) => {
    res.send(goodslist);
});

//删除id为xx数据,
// app.delete('/good', (req, res) => {

// });

//修改id为xx的数据
// app.put('./good', (req, res) => {

// });

app.listen(1912, () => {
    console.log('服务器成功开启,请访问1912端口');
});