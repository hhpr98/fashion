const product = require('../models/account');

exports.profileAccount = async (req, res, next) => {
    res.render('account/account');
};

exports.loginAccount = async (req, res, next) => {
    res.render('account/login');
};

exports.registerAccount = async (req, res, next) => {
    res.render('account/registration');
};

exports.forgotPasswordAccount = async (req, res, next) => {
    res.render('account/forgot-password');
};