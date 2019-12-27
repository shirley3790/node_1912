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

    //在集合里面进行增删改查
    let songs = [{
        "id": 5,
        "name": "月亮代表我的心"
    }, {
        "id": 6,
        "name": "我心依旧"
    }, {
        "id": 7,
        "name": "涛声依旧"
    }, {
        "id": 8,
        "name": "匆匆那年"
    }, {
        "id": 9,
        "name": "月亮代表我的心"
    }, {
        "id": 10,
        "name": "我心依旧"
    }, {
        "id": 11,
        "name": "涛声依旧"
    }, {
        "id": 12,
        "name": "匆匆那年"
    }];

    //需求：给song集合插入数据
    // col.insertMany(songs);
    col.insertMany(datacnode);//读取文件模块的数据，转存到mongo数据库中

    //需求：查询数据
    let data = await col.find().toArray();
    // console.log(data);

    //需求：查找id大于2  $gt大于  $lt小于 $gte大于等于 $lte小于等于 $ne不等于
    let data2 = await col.find({
        'id': {
            $gt: 2
        }
    }).toArray();
    // console.log(data2);

    //需求：查找name叫“涛声依旧”
    let data3 = await col.find({
        name: '涛声依旧'
    }).toArray();
    // console.log(data3);

    //需求：查找id为2 且 name 我心依旧
    let data4 = await col.find({
        id: 2,
        name: '我心依旧'
    }).toArray();
    // console.log(data4);

    //需求：对id进行排序 降序
    let data5 = await col.find().sort({ id: -1 }).toArray();
    // console.log(data5);

    //需求：获取 第一页数据page 1 每页 5条  分页的制作方法有顺序要求：limit().skip().sort()   
    //mysql :limit index,num
    let num = 5;
    let page = 2;
    let data6 = await col.find().limit(num).skip((page - 1) * num).toArray();
    // console.log(data6);

    //需求：修改name叫 月亮代表我的心; 改成：月亮惹的祸
    // let data7 = await col.updateMany({
    //     name: '月亮之上'
    // }, {
    //     $set: {
    //         name: '月亮弯弯'
    //     }
    // });
    // if (data7.modifiedCount) {
    //     console.log('修改成功');
    // } else {
    //     console.log('修改失败');
    // }
    // console.log(data7);

    //需求：删除id 的数据
    let data8 = await col.deleteMany({
        id: 2
    });
    console.log(data8);
    if (data8.deletedCount) {
        console.log('删除成功');
    } else {
        console.log('删除失败');
    }

    //关闭数据库连接
    client.close();
});