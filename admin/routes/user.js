var express = require('express');
var router = express.Router();

/* GET users listing. */

router.get('/', function(req, res, next) {
    res.render('./user/user',{userData:[
        {MaNguoiDung:1,
        HoTen:'A',
        DiaChi:'DC',
        SoDienThoai:'SDT',
        ThoiGianDangKi:'2019-01-01'}
        ]});
});

/*
const userController = require('../controllers/userController');
router.get('./user/user', userController.userIndex);
*/

module.exports = router;
