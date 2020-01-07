//子路由
const express = require('express');
const Router = express.Router();//路由设置  Router==app
// const { find, remove } = require('../db/mongo');
const query = require('../db/mysql');//自定义一个模块
// console.log(fns);
/*
    商品管理：
        * 数据渲染
        * 添加商品
        * 删除商品
        * 修改信息
        * 分页功能
*/

/*
    详情页接口实现原理：点击加入购物车
        * let str = 'select * from inf_good where gid=3'
        * let data = await query(str);
        * let str2 = 'insert into inf_cart(xx,xx,xx,xxx) values(${data})'
        * let data2 = await query(str2);
*/

//多用户多商铺购物车接口实现:
Router.get('/cart', async (req, res) => {
    //uid不是固定的，到时候要传过来
    //前端发送{name:'我心依旧'} 查询数据返回给前端
    let str = `select distinct sid from inf_cart WHERE uid=1`;//查找所有的店铺sid
    let data = await query(str);
    // console.log(data);
    // res.send(data);
    let result = [];
    if (data.length) {
        //不为空，遍历数组查询商店数据
        for (let i = 0; i < data.length; i++) {
            console.log(data[i].sid + '次');
            var str2 = `SELECT * FROM inf_cart WHERE sid=${data[i].sid} AND uid=1`;//查找某个用户在某个商店下买点所有商品
            var data2 = await query(str2);
            data2.forEach(item => {
                item.ischecked = false;
            });
            var obj = {
                sid: data[i].sid,
                ischecked: false,
                goodslist: data2
            }

            result.push(obj);//obj是一个店铺的信息
        }

        res.send(result);
    }
    // console.log(data);
    // res.send('完成');
});


module.exports = Router;