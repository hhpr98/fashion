var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index');
});

/* GET product. */
router.get('/product', function(req, res, next) {
  res.render('product');
});

/* GET product-single */
router.get('/product-single', function(req, res, next) {
  res.render('product-single');
});

module.exports = router;
