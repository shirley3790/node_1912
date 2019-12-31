//需求：又开启websocket服务器，又能开启web静态资源服务器

const SocketServer = require('ws').Server;
const express = require('express');
const http = require('http');

// web服务器
const app = express();
app.use(express.static('./'));//开启静态资源服务器


// 利用http模块连接websocket服务器与web服务器
let server = http.createServer(app)

// WebSocket服务器
let wss = new SocketServer({ //开启websocket服务器
    // 在websocket中设置server,连接http模块
    server,
});
// console.log('socket服务器启动成功')

server.listen(1912, () => {
    console.log('web & websockt server启动成功,端口号1912')
});

//监听客户端消息
wss.on('connection', client => {
    console.log('客户端连接服务器了');
    client.on('message', mes => {//把前端发过来的数据广播给所有的用户
        console.log(mes);
        wss.clients.forEach(item => {//广播消息
            item.send(mes);
        });
    });
});