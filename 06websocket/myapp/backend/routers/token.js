const jwt = require('jsonwebtoken');
/**
 * Token的生成与校验
*/
/**
 * 
 * @param {String} data         加密数据
 * @param {Number} expiresIn    有效期（单位:s）
 */

//生成token
let secret = 'malin';//钥匙
function create(data, expiresIn = 60) {
    let token = jwt.sign({ data }, secret, {
        expiresIn
    });
    return token;
}

//验证token
function verify(token) {
    let res;
    try {
        let result = jwt.verify(token, secret);
        console.log('token校验：', result)
        res = true;
    } catch (err) {
        res = false;
    }

    return res;
}

module.exports = {
    create,
    verify
}