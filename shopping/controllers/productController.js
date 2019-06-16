const product = require('../models/product');

exports.productIndex = async (req, res, next) => {
    const productData = await product.allProduct();
    res.render('product/product', {productData});
};

exports.productDetail = async (req, res, next) => {
    res.render('product/single-product');
};

exports.productSearch = async (req, res, next) => {
    console.log("Vào search");
    res.render('product/search');
};