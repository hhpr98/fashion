var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
    res.render('./product/confirmation');
});

/*
// Require controller modules.
var product_controller = require('../controllers/productController');
var account_controller = require('../controllers/accountController');

/// PRODUCT ROUTES ///

// GET product home page.
router.get('/', product_controller.index);

// GET request for creating a product. NOTE This must come before routes that display product (uses id).
router.get('/product/create', product_controller.product_create_get);

// POST request for creating product.
router.post('/product/create', product_controller.product_create_post);

// GET request to delete product.
router.get('/product/:id/delete', product_controller.product_delete_get);

// POST request to delete product.
router.post('/product/:id/delete', product_controller.product_delete_post);

// GET request to update product.
router.get('/product/:id/update', product_controller.product_update_get);

// POST request to update product.
router.post('/product/:id/update', product_controller.product_update_post);

// GET request for one product.
router.get('/product/:id', product_controller.product_detail);

// GET request for list of all product items.
router.get('/products', product_controller.product_list);

/// ACCOUNT ROUTES ///

// GET account home page.
router.get('/', account_controller.index);

// GET request for creating a account. NOTE This must come before routes that display account (uses id).
router.get('/account/create', account_controller.account_create_get);

// POST request for creating account.
router.post('/account/create', account_controller.account_create_post);

// GET request to delete account.
router.get('/account/:id/delete', account_controller.account_delete_get);

// POST request to delete account.
router.post('/account/:id/delete', account_controller.account_delete_post);

// GET request to update account.
router.get('/account/:id/update', account_controller.account_update_get);

// POST request to update account.
router.post('/account/:id/update', account_controller.account_update_post);

// GET request for one account.
router.get('/account/:id', account_controller.account_detail);

// GET request for list of all account items.
router.get('/accounts', account_controller.account_list);

 */

module.exports = router;
