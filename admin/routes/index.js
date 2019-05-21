var express = require('express');
var router = express.Router();

/* GET home page. */
/*
router.get('/', function(req, res, next) {
  res.render('home/index');
});
*/

const homeController = require('../controllers/homeController');
router.get('/', homeController.homeIndex);

module.exports = router;
