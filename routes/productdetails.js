const express = require('express');
const router = express.Router();
var sqlite3 = require('sqlite3');
var path = require('path');


// Connect to the database
const db = new sqlite3.Database(path.join(__dirname, "../products.db"), 
);



// ----SHUFFLE FUNCTION----
function shuffleArray(array) {
  for (let i = array.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [array[i], array[j]] = [array[j], array[i]];
  }
}



// GET /productdetails/:urlSlug (t.ex. /productdetails/eyeliner-NYX)
router.get('/:urlSlug', function (req, res) {
  const urlSlug = req.params.urlSlug;

  db.get(
    `SELECT * FROM products WHERE urlSlug = ?`,
    [urlSlug], (err, product) => {
      
      // Get all products info and use for "Reccomended products"
      db.all(`SELECT * FROM products`, [], (err, products) => {
       
       // Shuffle the products
       shuffleArray(products);

    
      // Render the template with product data
      res.render('products/view', {
        title: product.name,
        product,
        products,
      });
      });
    }
  );
});



module.exports = router;