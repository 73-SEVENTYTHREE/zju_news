// 连接数据库
const mysql = require("mysql");
const config = {
    host: "localhost",
    user: "root",
    password: "2569535507Lw",
    database: "zjuNews",
};
const infoConfig = {
    host: "localhost",
    user: "root",
    password: "2569535507Lw",
    database: "information_schema",
}
const client = mysql.createConnection(config);
const client2 = mysql.createConnection(infoConfig)
// sql语句
function sqlQuery(sql, callback, schema) {
    if(schema === 'zju'){
        client.query(sql, (err, result) => {
            if (err) {
                return console.log(err);
            }
            callback(result);
        });
    }
    else{
        client2.query(sql, (err, result) => {
            if (err) {
                return console.log(err);
            }
            callback(result);
        });
    }
}
module.exports = sqlQuery;