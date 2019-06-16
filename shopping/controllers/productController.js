const product = require('../models/product');

exports.productIndex = async (req, res, next) => {
    const productData = await product.allProduct();
    res.render('product/product', {productData});
};

exports.productDetail = async (req, res, next) => {
    const pDetail = await product.detailProduct(req.params.id);
    res.render('product/single-product',{pDetail});
};

exports.productSearch = async (req, res, next) => {
    res.render('product/search');
};