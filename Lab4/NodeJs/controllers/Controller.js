const express = require('express');
var router = express.Router();
var ObjectId = require('mongoose').Types.ObjectId;

var { Product } = require('../models/Product');
router.get('/', (req, res) => {
    Product.find((err, docs) => {
        if (!err) { res.send(docs); } else { console.log('Error: ' + JSON.stringify(err, undefined, 2)); }
    });
});

router.get('/product/:id', (req, res) => {
    if (!ObjectId.isValid(req.params.id))
        return res.status(400).send(`No such id: ${req.params.id}`);

    Product.findById(req.params.id, (err, doc) => {
        if (!err) { res.send(doc); } else { console.log('Error: ' + JSON.stringify(err, undefined, 2)); }
    });
});

router.post('/add-product', (req, res) => {
    var product = new Product({
        price_id: req.body.price_id,
        weight: req.body.weight,
        manufacturer_id: req.body.manufacturer_id,
        category_id: req.body.category_id,
    });
    product.save((err, doc) => {
        if (!err) { res.send(doc); } else { console.log('Error: ' + JSON.stringify(err, undefined, 2)); }
    });
});

router.put('/update-product/:id', (req, res) => {
    if (!ObjectId.isValid(req.params.id))
        return res.status(400).send(`No such id: ${req.params.id}`);

    var product = {
        price_id: req.body.price_id,
        weight: req.body.weight,
        manufacturer_id: req.body.manufacturer_id,
        category_id: req.body.category_id,
    };
    Product.findByIdAndUpdate(req.params.id, { $set: product }, { new: true }, (err, doc) => {
        if (!err) { res.send(doc); } else { console.log('Error: ' + JSON.stringify(err, undefined, 2)); }
    });
});

router.delete('/delete-product/:id', (req, res) => {
    if (!ObjectId.isValid(req.params.id))
        return res.status(400).send(`No such id: ${req.params.id}`);

    Product.findByIdAndRemove(req.params.id, (err, doc) => {
        if (!err) { res.send(doc); } else { console.log('Error: ' + JSON.stringify(err, undefined, 2)); }
    });
});

module.exports = router;