const { dbs } = require('../dbs');

// get all
const allCategory = async() => {
    const results = await dbs.category;
    //console.log("DATA: ",results);
    return results;
};
exports.allCategory=allCategory;

// get by id
const detailCategory = async (id) => {
    const results = await dbs.category.find(id);
    console.log(results[0]);
    return results[0];
};
exports.detailCategory = detailCategory;