const user = require('../models/user');

exports.userIndex = async (req, res, next) => {
    const userData = await user.allUser();
    console.log(userData);
    res.render('user/user', {userData});
}