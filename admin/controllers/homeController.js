const product = require('../models/product');

exports.homeIndex = async (req, res, next) => {
    const productData = await product.allProduct();
    res.render('home/index', {productData});
};