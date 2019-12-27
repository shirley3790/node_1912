//需求：下面图片到本地

const request = require('request');
const cheerio = require('cheerio');//类似jq的模块，第三方模块，需要安装 npm i cheerio -S
const fs = require('fs');
const path = require('path');

//下载一个图片到本地
request('http://img.netbian.com/file/2019/1223/148f0cc102503b874386b873688d678e.jpg').pipe(fs.createWriteStream('./ss.jpg'));