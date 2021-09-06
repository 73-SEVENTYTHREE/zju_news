const express = require("express");
const router = express.Router();
const sqlQuery = require("./mysql");
const table_names = require('./tables')
//设置跨域访问
router.all("*", function (req, res, next) {
    //设置允许跨域的域名，*代表允许任意域名跨域
    res.header("Access-Control-Allow-Origin", "*");
    //允许的header类型
    res.header("Access-Control-Allow-Headers", "content-type");
    //跨域允许的请求方式
    res.header("Access-Control-Allow-Methods", "DELETE,PUT,POST,GET,OPTIONS");
    if (req.method.toLowerCase() == "options") res.sendStatus(200);
    //让options尝试请求快速结束
    else next();
});
// 查询新闻表
router.post("/api/getList", (req, res) => {
    const {college, language} = {...req.body}
    if(college !== 'recent'){
        const sql = `select * from ${college} where articleType='${language}'`;
        sqlQuery(sql, (data) => {
            res.send({
                code: "200",
                message: "查询成功",
                data,
            });
        }, "zju");
    }
    else{
        let news = {}
        table_names.forEach(item => {
            const sql = `select * from ${item} where articleType='${language}' limit 5`;
            sqlQuery(sql, (data) => {
                news[item] = data
            }, "zju");
        })
        setTimeout(() => {
            res.send({
                code: "200",
                message: "查询成功",
                data: news,
            });
        }, 4000)
    }
});
// 登录
router.post("/api/auth/login", function (req, res) {
    const { username, password } = { ...req.body };
    const sql = `select * from userinfo where username='${username}' and password='${password}'`;
    sqlQuery(sql, (data) => {
        if (data.length > 0)
            return res.send({
                code: 200,
                message: "登录成功",
            });
        res.send({
            code: 500,
            message: "用户不存在",
        });
    }, "zju");
});
module.exports = router;