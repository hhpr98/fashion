var mysql = require('mysql');

console.log('Get connection ...');

var conn = mysql.createConnection({
    database: 'fashion_shop',
    host: "localhost",
    user: "root",
    password: ""
});

var dbs = {production: {},category:{},user:{},account:{}};

conn.connect(function(err) {
    if (err) throw err;
    //console.log("Kết nối thành công!"); // Test kết nối thành công (nháy chuột phải và Run để test kết nối)

    var sql = "select* from sanpham";

    conn.query(sql, function(err, rows, fields) {
        if (err) throw err;
        //console.log("Get dữ liệu product thành công!");
        //console.log(rows[0].TenSP);
        dbs.production = rows;
        //console.log(dbs.production);
    });

    var sql2 = "select* from loaisanpham";
    conn.query(sql2, function(err, rows) {
        if (err) throw err;
        //console.log("Get dữ liệu category thành công!");
        dbs.category = rows;
        //console.log(dbs.category);
    });

    var sql3 = "select* from nguoidung";
    conn.query(sql3, function(err, rows) {
        if (err) throw err;
        //console.log("Get dữ liệu user thành công!");
        dbs.user = rows;
        //console.log(dbs.user);
    });
    var sql4 = "select* from taikhoan";
    conn.query(sql4, function(err, rows) {
        if (err) throw err;
        //console.log("Get dữ liệu taikhoan thành công!");
        dbs.account = rows;
        //console.log(dbs.user);
    });
});


exports.dbs = dbs;