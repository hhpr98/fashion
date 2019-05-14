exports.home = (req, res, next) => {
    res.render('/', {
        allProduct: [{
            MaSP:1,
            TenSP:'QUẦN JEAN ĐEN QJ1394',
            GiaBan:325000,
            HinhAnh:'./img/product/quan_jean/QJ1394.jpg',
        },
        ],
    });
};