var mysql = require('mysql');

//console.log('Đang kết nối ...');

var conn = mysql.createConnection({
    database: 'fashion_shop',
    host: "localhost",
    user: "root",
    password: ""
});

// get all
var dbs = {production: {},category:{}};
var sql = "select* from sanpham";
conn.query(sql, function(err, results) {
    if (err) throw err;
    //console.log("Get dữ liệu product thành công!");
    dbs.production = results;
});
var sql2 = "select* from loaisanpham";
conn.query(sql2, function(err, results) {
    if (err) throw err;
    dbs.category = results;
});

const allProduct = async() => {
    const results = await dbs.production;
    return results;
};
exports.allProduct=allProduct;

const allCategory = async()=>{
    const results = await dbs.category;
    return results;
}
exports.allCategory=allCategory;

// get by id
var detail = {};
const detailProduct = async (id) => {
    var sql1 = "select* from sanpham where MaSP="+id.toString();
    conn.query(sql1, function(err, results) {
        if (err) throw err;
        detail=results;
    });
    const res = await detail;
    return res;
};
exports.detailProduct = detailProduct;

