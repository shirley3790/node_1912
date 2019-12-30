//子路由
const express = require('express');
const Router = express.Router();//路由设置  Router==app
var multer = require('multer');//引入multer实现文件上传
const query = require('../db/mysql');
const { local } = require('../../config.json');
//配置上传文件的的目录：无则自动创建:初级版，缺点是图片上传后没有后缀，文件名被改成随机数。
// var upload = multer({ dest: 'uploads/' });

//高级版：重命名图片
var storage = multer.diskStorage({
    //设置文件上传目录：这种方式如果没有文件夹会报错
    // destination: function (req, file, cb) {
    //     cb(null, 'uploads/')
    // },
    //设置文件上传目录:无则自动创建
    destination: 'uploads/',
    filename: function (req, file, cb) {
        // console.log(file);
        let arr = file.originalname.split('.');
        // cb(null, file.fieldname + '-' + Date.now())
        cb(null, arr[0] + '-' + Date.now() + '.' + arr[1]);//拼接出文件名
    }
})

var upload = multer({ storage });

//需求：上传头像，上传单个图片
Router.post('/touxiang', upload.single('touxiang'), async (req, res) => {
    //upload.single()可以接收一个文件，会帮你保存在req的file属性里面
    let { uid } = req.body;
    // console.log(uid);
    let url = req.file.path.split("\\");
    console.log(url);
    url = local + '/uploads/' + url[1];
    let sql = `UPDATE userinf SET adr='${url}' WHERE uid=${uid}`;
    let data = await query(sql);

    // console.log(req.file);//把数据存到数据库里面
    res.send('上传成功');
});

//需求：上传多个商品图片 最多能一次上传5个图片
Router.post('/goods', upload.array('goods', 5), async (req, res) => {
    //upload.array()可以接收多个文件，会帮你保存在req的files属性里面 
    // console.log(req.files);//存到数据库里面
    let { id } = req.body;
    console.log(id);
    let str = '';
    for (let i in req.files) { //[{},{}]
        let arr = req.files[i].path.split('\\');//['uploads','ss.jpg']
        str += local + '/uploads/' + arr[1] + '&';
    }
    str = str.slice(0, -1);
    let sql = `UPDATE goodslist SET url='${str}' WHERE id=${id}`;
    let data = await query(sql);
    console.log(str);
    res.send('上传成功');
});

module.exports = Router;