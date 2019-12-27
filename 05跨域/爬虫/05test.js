const request = require('request');
const cheerio = require('cheerio'); //类似jq的模块，第三方模块，需要安装 npm i cheerio -S
const fs = require('fs');
const path = require('path');
const qs = require('querystring');

// 爬取这里的数据
// https://cnodejs.org/

request({
    url: 'https://cnodejs.org/'
}, (error, response, body) => {
    let $ = cheerio.load(body); //把这个网页全部拿下来

    let datalist = [];
    let res = $('#topic_list .cell').each((idx, ele) => {
        let data = {};
        data.url = $(ele).find('img').attr('src');
        data.title = $(ele).find('.topic_title').attr('title');
        datalist.push(data);
    });
    // console.log(datalist);
    let writestr = fs.createWriteStream('./data/cnode.json');
    let str = JSON.stringify(datalist);
    writestr.write(str);
    writestr.end();
    writestr.on('finish', function () { //finish事件：写入完成的事件
        console.log("写入完成。");
    });
});