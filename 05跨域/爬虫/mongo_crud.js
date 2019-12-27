//需求：连接mongo实现一个接口
// const mongodb = require('mongodb'); //{MongoClient : xxx}
// const MongoClient = mongodb.MongoClient;
const { MongoClient } = require('mongodb');
let DBurl = 'mongodb://localhost:27017';
let datacnode = require('./data/cnode.json');//文件模块
//连接mongodb数据库
MongoClient.connect(DBurl, async (err, client) => {
    //err 连接错误信息，client连接成功的客户端
    if (err) throw err;
    let db = client.db('h51912');//连接数据库，里面写的是数据库名字。有就是连接，没有就是创建新的数据库
    //有则连接，无则创建集合
    let col = db.collection('datacnode');

    //需求：把爬取下来的数据导入mongodb
    // col.insertMany(songs);
    col.insertMany(datacnode);//读取文件模块的数据，转存到mongo数据库中

    //关闭数据库连接
    client.close();
});