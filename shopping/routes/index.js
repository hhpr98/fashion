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


/* GET login. */
router.get('/login', function(req, res, next) {
  res.render('login');
});



module.exports = router;
