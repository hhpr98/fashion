const user = require('../models/user');

exports.userIndex = async (req, res, next) => {
    const users = await user.allUser();
    console.log(users);
    res.render('user', {userData});
}