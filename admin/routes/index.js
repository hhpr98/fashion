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

/* GET product-checkout */
router.get('/product-checkout', function(req, res, next) {
  res.render('product-checkout');
});

/* GET dashboardo-finance */
router.get('/dashboardo-finance', function(req, res, next) {
  res.render('dashboardo-finance');
});

module.exports = router;
