var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index');
});

/* GET product.
router.get('/product', function(req, res, next) {
  res.render('product');
});
*/
/* GET product-single
router.get('/product-single', function(req, res, next) {
  res.render('product-single');
});
*/
/* GET product-checkout
router.get('/product-checkout', function(req, res, next) {
  res.render('product-checkout');
});
*/
/* GET dashboard-finance
router.get('/dashboard-finance', function(req, res, next) {
  res.render('dashboard-finance');
});
*/
/* GET sales
router.get('/sales', function(req, res, next) {
  res.render('sales');
});
*/
/* GET user
router.get('/user', function(req, res, next) {
  res.render('user');
});
*/
/* GET edit
router.get('/edit', function(req, res, next) {
  res.render('edit');
});
*/
module.exports = router;
