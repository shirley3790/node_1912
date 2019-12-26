//子路由
const express = require('express');
const Router = express.Router();//路由设置  Router==app

/*
    商品管理：
        * 数据渲染
        * 添加商品
        * 删除商品
        * 修改信息
        * 分页功能
*/

//商品数据
let cartlist = [
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
//需求：查询gid=2的商品数据，动态路由  /goods/2
Router.get('/goods/:gid', (req, res) => {
    let { gid } = req.params; //{ gid: 2 }
    // console.log(obj);
    let newarr = cartlist.filter(item => item.gid == gid);
    let data = {};
    if (newarr.length) {
        //找到数据
        data = {
            type: 1,
            msg: '成功',
            list: newarr
        }
    } else {
        //没有找到数据
        data = {
            type: 0,
            msg: '失败',
            list: []
        }
    }

    res.send(data);
});
module.exports = Router;