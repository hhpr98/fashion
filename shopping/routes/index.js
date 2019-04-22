var express = require('express');
var router = express.Router();


/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index');
});

/* GET category. */
router.get('/category', function(req, res, next) {
  res.render('category');
});

/* GET detail product. */
router.get('/single-product', function(req, res, next) {
  res.render('single-product');
});

/* GET checkout */
router.get('/checkout',function (req, res, next) {
    res.render('checkout');
})

/* GET cart */
router.get('/cart',function (req, res, next) {
    res.render('cart');
})

/* GET confirmation */
router.get('/confirmation',function (req, res, next) {
    res.render('confirmation');
})


/* GET login. */
router.get('/login', function(req, res, next) {
  res.render('login');
});

/* GET contact. */
router.get('/contact', function(req, res, next) {
    res.render('contact');
});

module.exports = router;
