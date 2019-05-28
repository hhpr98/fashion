const { dbs } = require('../dbs');

// get all
const allAccount = async() => {
    const results = await dbs.account;
    //console.log("DATA: ",results);
    return results;
};
exports.allAccount=allAccount;