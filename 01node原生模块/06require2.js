
//需求：导入一个模块来使用

//导入模块  ： require(相对路径) 

//解构对象
let { show, obj } = require('./05exports');

// fn();//因为导入的是一个函数，需要调用才有意义
show();

console.log(show);
console.log(obj);

// fn.obj.showname();//调用obj里面的方法