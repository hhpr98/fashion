const { dbs } = require('../dbs');

var mysql = require('mysql');
var conn = mysql.createConnection({
    database: 'fashion_shop',
    host: "localhost",
    user: "root",
    password: ""
});


// get all
const allUser = async() => {
    return await dbs.user;
};
exports.allUser=allUser;

// delete by id

var k = {production: {},category:{},user:{}};
const deleteUser = async(id) => {
    /*
    return await dbs.user.delete(id);
    */

    conn.connect(function(err) {
        if (err) throw err;

        var sql = "delete from nguoidung where MaNguoiDung=" +String(id);

        conn.query(sql, function (err) {
            if (err) throw err;
            console.log('Xóa thành công');
        });

        var sql3 = "select* from nguoidung";
        conn.query(sql3, function(err, rows) {
            if (err) throw err;
            k.user = rows;
        });
    });
    return k.user;
};
exports.deleteUser=deleteUser;
