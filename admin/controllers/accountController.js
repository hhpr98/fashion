const account = require('../models/account');

exports.accountIndex = async (req, res, next) => {
    const accountData = await account.allAccount(res.id);
    res.render('home/account', {accountData});
};