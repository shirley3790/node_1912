//需求：做mysql的查询

const mysql = require('mysql');//引入第三方模块

//建立连接池
var pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: 'root',
    port: 3306,
    database: 'db1911',
    multipleStatements: true
});

//写查询语句
// let sql = 'SELECT * FROM userinf';
// pool.query(sql, (err, data) => {
//     // if (err) {
//     //     console.log(err);
//     //     return;//如果有错误，打印错误，阻止下面的代码运行
//     // }
//     if (err) throw err;//功能同上
//     console.log(data);
// });

//初级版：封装函数，让代码更为灵活
// function query(sql, callback) {
//     pool.query(sql, (err, data) => {
//         if (err) throw err;//功能同上
//         // console.log(data);
//         callback(data);//实参,回调函数把data数据传到声明体 
//     });
// }

//高级版：返回一个promise对象
function query(sql) {
    return new Promise((resolve, reject) => {
        pool.query(sql, (err, data) => {
            if (err) reject(err);//如果有错误就返回错误
            resolve(data);//实参,回调函数把data数据传到声明体 
        });
    });
}

module.exports = query;