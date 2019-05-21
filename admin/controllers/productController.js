const product = require('../models/product');
const category = require('../models/category');

exports.productIndex = async (req, res, next) => {
    const productData = await product.allProduct();
    const categoryData = await category.allCategory();
    res.render('product/product', {productData,categoryData});
};