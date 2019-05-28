const account = require('../models/account');

exports.accountIndex = async (req, res, next) => {
    const account = await account.allAccount();
    var flag=false;
    for(i=0;i<account.length;i++){
        if(account[i].TenDangNhap =="usename" && account[i].MatKhau=="password") {
            flag = true;
            break;

        }
    }
    if(flag==true){
        res.render('account/login', {accountData});
    }
};