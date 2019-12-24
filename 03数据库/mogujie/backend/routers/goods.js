const express = require('express');
const Router = express.Router(); //路由设置

//删除id为xx数据,
// Router.delete('/good', (req, res) => {

// });

//修改id为xx的数据
// Router.put('./good', (req, res) => {

// });

//需求：查询gid=2的商品数据，动态路由  /goods/2
Router.get('/goods/:gid', (req, res) => {
    let {
        gid
    } = req.params; //{ gid: 2 }
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