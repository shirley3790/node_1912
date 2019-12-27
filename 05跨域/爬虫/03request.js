//需求：发送ajax请求数据。request就是服务器的ajax
const request = require('request');//发送ajax请求
const cheerio = require('cheerio');//jq的节点操作

//需求：get请求
// request.get('https://cnodejs.org/api/v1/topics?page=1&limit=10', (error, response, body) => {
//     console.log(body)
// });

// console.log(window);

$ = cheerio.load('<h2 class = "title">Hello world</h2>');

$('h2').attr('title', '666');
$('h2').css('color', 'red');

// console.log($('h2'));
console.log($('h2').html());
console.log($('h2').attr('title'));
console.log($('h2').css('color'));


