var express = require('express');
var router = express.Router();

/* GET users listing. */
/*
router.get('/', function(req, res, next) {
    res.render('./product/product');
});
*/

const productController = require('../controllers/productController');
router.get('/', productController.productIndex);

module.exports = router;
