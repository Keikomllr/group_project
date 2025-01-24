const express = require('express');
const router = express.Router();

// Route för att rendera productdetails.ejs
router.get('/', (req, res) => {
  
  res.render('productdetails');
});

module.exports = router;