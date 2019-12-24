//需求：利用原生http模块开启一个服务器

//原生模块：不需要安装，直接就可以引用的模块
let http = require('http');//写绝对路径

let app = http.createServer((req, res) => {
    /*
        req:request 请求 ： 客户端发给服务器端
        res：respnse 响应，服务器发给客户端2
    */
    console.log(req.url);
    //简单的路由实现原理
    res.writeHead(200, { 'content-Type': 'text/html;charset=utf-8' });
    let path = req.url;
    switch (path) {
        case '/':
            res.write('首页');
            break;
        case '/login':
            res.write('登陆页');
            break;
        case '/reg':
            res.write('注册页');
            break;
        case '/list':
            res.write('列表页');
            break;
        default:
            res.write(`这个路径${path}不存在，404`);
    }

    // res.writeHead(200, { 'content-Type': 'text/plain;charset=utf-8' });

    // res.end('nodejs 之旅');//发送完成记得结束响应
    res.end();//发送完成记得结束响应
});

app.listen(1912, () => {//监听端口号：1-65536,不用写太小，因为容易和系统端口冲突
    console.log('服务器开启成功,请访问http://localhost:1912');
});