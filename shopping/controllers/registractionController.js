const account = require('../models/account');

exports.accountIndex = async (req, res, next) => {
    const account = await account.allAccount();

    account.add(4,nameR,passwordR,nameR);
        res.render('account/registration', {accountData});

};