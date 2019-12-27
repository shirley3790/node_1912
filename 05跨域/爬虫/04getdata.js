//需求：爬取https://cnodejs.org/页面的数据

const request = require('request');//发送ajax请求
const cheerio = require('cheerio');//jq的节点操作
const fs = require('fs');

request({
    url: 'https://cnodejs.org/'
}, (err, res, body) => {
    let $ = cheerio.load(body);

    let arr = [];//[{},{}]
    $('#topic_list .cell').each((index, ele) => {
        //ele 指的是 .cell
        let con = {};
        con.url = $(ele).find('.user_avatar img').attr('src');
        con.title = $(ele).find('.topic_title').attr('title');
        con.time = $(ele).find('.last_active_time').html();
        arr.push(con);//处理好一条就插入一条数据
    });
    // console.log(arr);
    //写入本地文件
    let writeStream = fs.createWriteStream('./data.json');
    let str = JSON.stringify(arr);
    writeStream.write(str);//写入文档中
    writeStream.end();
    writeStream.on('finish', () => {
        console.log('写入成功');
    });

});