var express = require('express');
var router = express.Router();
const products = require('../data/products'); 

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Harmony by CMK', products: products });
});

module.exports = router;
