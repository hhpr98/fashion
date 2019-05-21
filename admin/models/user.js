const { dbs } = require('../dbs');

// get all
const allUser = async() => {
    const results = await dbs.user;
    return results;
};
exports.allUser=allUser;
