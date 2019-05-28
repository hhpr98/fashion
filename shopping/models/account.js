const { dbs } = require('../dbs');

// get all
const allAccount = async() => {
    const results = await dbs.account;
    return results;
};
exports.allAccount=allAccount;