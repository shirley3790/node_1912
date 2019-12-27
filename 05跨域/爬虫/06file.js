
//需求：把读取下来的json文件，发给前端
//引入模块
const express = require('express');
let data = require('./data/cnode.json');//文件模块

// const Router = express.Router();

const app = express();
// console.log(data);

app.get('/data', (req, res) => {//读取硬盘的json数据发给前端
    console.log('进入路由');
    res.send(data);
});

//需求：把json数据存到数据库 mysql或mongo中。查询数据返回给前端


app.listen(1912, () => {
    console.log('服务器成功开启,请访问1912端口');
});