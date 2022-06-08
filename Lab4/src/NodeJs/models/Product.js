const mongoose = require('mongoose');

var Product = mongoose.model('Product', {
    product_id: { type: String },
    weight: { type: String },
    manufacturer_id: { type: String },
    category_id: { type: String }
});

module.exports = { Product };