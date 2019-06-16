var express = require('express');
var router = express.Router();


const productController = require('../controllers/productController');
router.get('/', productController.productIndex);
router.get('/:id',productController.productDetail);
router.get('/search',productController.productSearch);

module.exports = router;
