var express = require('express');
var router = express.Router();

/* GET users listing. */
const accountController = require('../controllers/accountController');
router.get('/profile',accountController.profileAccount);
router.get('/login',accountController.loginAccount);
router.get('/register',accountController.registerAccount);
router.get('/forgot',accountController.forgotPasswordAccount);

module.exports = router;
