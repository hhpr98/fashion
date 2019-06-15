const product = require('../models/home');

exports.home = async (req, res, next) => {
    const products = await product.allProduct();
    res.render('home/index', {products});
};