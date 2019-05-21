const user = require('../models/user');
var mysql = require('mysql');
var conn = mysql.createConnection({
    database: 'fashion_shop',
    host: "localhost",
    user: "root",
    password: ""
});

exports.userIndex = async (req, res, next) => {
    const userData = await user.allUser();
    console.log(userData);
    res.render('user/index', {userData});
};

exports.userAdd= async (req, res, next) => {
    res.render('user/add');
};

exports.userEdit= async (req, res, next) => {
    res.render('user/edit');
};

exports.userDelete=async (req, res, next) => {
    /*
    const userData = await user.deleteUser(res.id);
    res.render('user/index',{userData});
    */

    conn.connect(function(err) {
        if (err) throw err;

        var sql = "delete from nguoidung where MaNguoiDung="+res.id.toString();
        conn.query(sql, function(err) {
            if (err) throw err;
        });
    });
    const userData = await user.allUser();
    res.render('user/index', {userData});
};