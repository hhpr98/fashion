const { dbs } = require('../dbs');

// get all
const allProduct = async() => {
    const results = await dbs.production;
    //console.log("DATA: ",results);
    return results;
};
exports.allProduct=allProduct;