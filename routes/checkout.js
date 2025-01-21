var express = require('express');
var router = express.Router();

// GET route for the checkout page
router.get('/', function(req, res, next) {
  // You can pass any required data to the view here
  res.render('checkout'); // Make sure this corresponds to the file you create below
});

module.exports = router;