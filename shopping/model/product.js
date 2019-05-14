const { dbs } = require('../dbs');

const detailProduct = async (id) => {
    const results = await dbs.production.find(id).toArray();
    console.log(results[0]);
    return results[0];
};

exports.detailProduct = detailProduct;