var mysql = require('mysql');

console.log('Get connection ...');

var conn = mysql.createConnection({
    database: 'fashion_shop',
    host: "localhost",
    user: "root",
    password: ""
});

var dbs = {production: {}};

conn.connect(function(err) {
    if (err) throw err;
    console.log("Kết nối thành công!"); // Test kết nối thành công (nháy chuột phải và Run để test kết nối)

    var sql = "select* from sanpham";

    conn.query(sql, function(err, rows, fields) {
        if (err) throw err;
        console.log("Get dữ liệu thành công!");
        //console.log(rows[0].TenSP);
        dbs.production = rows;
        //console.log(dbs.production);
    });
});

exports.dbs = dbs;