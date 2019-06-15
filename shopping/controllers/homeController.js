const product = require('../models/product');

exports.home = async (req, res, next) => {
    const products = await product.allProduct();
    //console.log(products);
    res.render('home/index', {products});
};