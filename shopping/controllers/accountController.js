var Account = require('../models/account');

// Display list of all Account
exports.account_list = function(req, res) {
    res.send('NOT IMPLEMENTED');
};

// Display detail page for a specific Account
exports.account_detail = function(req, res) {
    res.send('NOT IMPLEMENTED' + req.params.id);
};

// Display Account create form on GET.
exports.account_create_get = function(req, res) {
    res.send('NOT IMPLEMENTED');
};

// Handle Account create on POST.
exports.account_create_post = function(req, res) {
    res.send('NOT IMPLEMENTED');
};

// Display Account delete form on GET.
exports.account_delete_get = function(req, res) {
    res.send('NOT IMPLEMENTED');
};

// Handle Account delete on POST.
exports.account_delete_post = function(req, res) {
    res.send('NOT IMPLEMENTED');
};

// Display Account update form on GET.
exports.account_update_get = function(req, res) {
    res.send('NOT IMPLEMENTED');
};

// Handle Account update on POST.
exports.account_update_post = function(req, res) {
    res.send('NOT IMPLEMENTED');
};