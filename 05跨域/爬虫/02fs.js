//需求：读写文件
const fs = require('fs');//fs是变量名可以随便改

//需求：读一个本地的文件并打印(异步) 性能上异步更好
fs.readFile('./aa.txt', (err, data) => {
    if (err) throw err;
    // console.log(data);
    // console.log(data.toString());
});

//需求：读一个本地的文件并打印(同步)
// let str = fs.readFileSync('./aa.txt');//这个好看
// console.log(str.toString());


//需求：写文件
//writeFile 覆盖的写法
// fs.writeFile('./bb.txt', '我们不一样', err => {
//     if (err) throw err;
//     fs.readFile('./bb.txt', (err, data) => {
//         console.log(data.toString());
//     });
// });

//需求：追加数据
// fs.appendFile('./bb.txt', '黄花树下不见不散', err => {
//     if (err) throw err;
//     fs.readFile('./bb.txt', (err, data) => {
//         console.log(data.toString());
//     });
// });

//需求：复制文件
function copy(path1, path2) {
    //path1来源
    //path2存到哪里去
    fs.readFile(path1, (err, data) => {
        if (err) throw err;
        fs.writeFile(path2, data, err => {
            console.log('拷贝成功');
        });
    });
}

// copy('./aa.txt', './cc.txt');

//上面的方式只适用于小文件，大文件应该用流方式读写

//需求：用流的方式读取文件

//需求：用流的方式读文件

let readStream = fs.createReadStream('./aa.txt');//以流的方式读取文件

let data = '';
//检测数据正在接收中：拼接
readStream.on('data', chunk => {
    // console.log(chunk);
    data += chunk;
});

//检测数据已经接收完毕 end
readStream.on('end', () => {
    console.log(data);
});

//需求：用流的方式写文件
let writeStream = fs.createWriteStream('./dd.txt');

//写文件
writeStream.write('佛山');
writeStream.write('东莞');
writeStream.write('珠海');

writeStream.end();//写完来结束

writeStream.on('finish', () => {
    console.log('写入完成');
});

