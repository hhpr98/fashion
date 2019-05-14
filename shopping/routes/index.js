var express = require('express');
var router = express.Router();


/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index',{allProduct: [{
      MaSP:1,
      TenSP:'QUẦN JEAN ĐEN QJ1394',
      GiaBan:325000,
      HinhAnh:'./img/product/quan_jean/QJ1394.jpg',
    },
    ]});
});

module.exports = router;
