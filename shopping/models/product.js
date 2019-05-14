const { dbs } = require('../dbs');

// get all
const allProduct = async() => {
    const results = await dbs.production;
    //console.log("DATA: ",results);
    return results;
};
exports.allProduct=allProduct;

// get by id
const detailProduct = async (id) => {
    const results = await dbs.production.find(id);
    console.log(results[0]);
    return results[0];
};
exports.detailProduct = detailProduct;