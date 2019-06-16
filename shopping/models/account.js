var mysql = require('mysql');

var conn = mysql.createConnection({
    database: 'fashion_shop',
    host: "localhost",
    user: "root",
    password: ""
});

// get all
var dbs = {account:{}};
var sql = "select* from taikhoan";
conn.query(sql, function(err, results) {
    if (err) throw err;
    dbs.account = results;
});

const allAccount = async() => {
    const results = await dbs.account;
    return results;
};
exports.allAccount=allAccount;
