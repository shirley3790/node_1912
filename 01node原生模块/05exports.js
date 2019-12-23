
//需求：这里封装了方法，导出给别人使用，自定义模块

/*
    模块：
        * 原生模块：绝对路径
        * 文件模块
        * 第三方模块：绝对路径
        * 自定义模块
            * 导出
                * mudule.exports
                * exports
            * 导入
                * require(相对路径)
*/

let show = () => {
    let name = '夏老师';
    console.log(name);
}

let obj = {
    name: '老谢',
    adr: '广西钦州',
    showname() {
        console.log(this.name);
    }
}

//导出模块==暴露模块  exports就是一个对象

// let data ={};
// data.one = '666';

//结论：用exports的导出方式，可以一次导出多个接口，但是导入的时候，直接就得到一个对象
exports.show = show;
exports.obj = obj;
