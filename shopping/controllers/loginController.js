const account = require('../models/account');

exports.accountIndex = async (req, res, next) => {
    const account = await account.allAccount();
    var flag=false;
    for(a in account){
        

    }
    res.render('account/account', {accountData});
};