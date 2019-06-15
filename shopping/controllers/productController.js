
/*
var Product = require('../models/product');

// Display list of all Product
exports.product_list = function(req, res) {
    res.send('NOT IMPLEMENTED');
};

// Display detail page for a specific Product.
exports.product_detail = function(req, res) {
    res.send('NOT IMPLEMENTED' + req.params.id);
};

// Display Product create form on GET.
exports.product_create_get = function(req, res) {
    res.send('NOT IMPLEMENTED');
};

// Handle Product create on POST.
exports.product_create_post = function(req, res) {
    res.send('NOT IMPLEMENTED');
};

// Display Product delete form on GET.
exports.product_delete_get = function(req, res) {
    res.send('NOT IMPLEMENTED');
};

// Handle Product delete on POST.
exports.product_delete_post = function(req, res) {
    res.send('NOT IMPLEMENTED');
};

// Display Product update form on GET.
exports.product_update_get = function(req, res) {
    res.send('NOT IMPLEMENTED');
};

// Handle Product update on POST.
exports.product_update_post = function(req, res) {
    res.send('NOT IMPLEMENTED');
};
*/

const product = require('../models/product');
const category = require('../models/category');

exports.productIndex = async (req, res, next) => {
    const productData = await product.allProduct();
    res.render('product/product', {productData});
};