const { dbs } = require('../dbs');

// get all
const allUser = async() => {
    return await dbs.user;
};
exports.allUser=allUser;

// delete by id
const deleteUser = async(id) => {
    return await dbs.user.delete(id);
};
exports.deleteUser=deleteUser;
