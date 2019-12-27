//子路由
const express = require('express');
const Router = express.Router();//路由设置  Router==app
const { find, remove } = require('../db/mongo');
// console.log(fns);
/*
    商品管理：
        * 数据渲染
        * 添加商品
        * 删除商品
        * 修改信息
        * 分页功能
*/

Router.get('/all', async (req, res) => {
    //前端发送{name:'我心依旧'} 查询数据返回给前端
    let data = await find(req.query);
    res.send(data);
});


module.exports = Router;