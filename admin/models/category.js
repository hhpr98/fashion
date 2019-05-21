const { dbs } = require('../dbs');

// get all
const allCategory = async() => {
    const results = await dbs.category;
    //console.log("DATA: ",results);
    return results;
};
exports.allCategory=allCategory;
