const user = require('../models/user');

exports.userIndex = async (req, res, next) => {
    const userData = await user.allUser();
    //console.log(userData);
    res.render('user/index', {userData});
};

exports.userAdd= async (req, res, next) => {
    res.render('user/add');
};

exports.userEdit= async (req, res, next) => {
    res.render('user/edit');
};

exports.userDelete=async (req, res, next) => {

    const userData = await user.deleteUser(res.id);
    res.render('user/index',{userData});
};