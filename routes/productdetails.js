const express = require('express');
const router = express.Router();
var sqlite3 = require('sqlite3');
var path = require('path');


// Connect to the database
const db = new sqlite3.Database(path.join(__dirname, "../products.db"), (err) => {
  if (err) {
    console.error("Database connection failed:", err.message);
  } else {
    console.log("Connected to the database: /products.db");
  }
});

router.get('/:urlSlug', function (req, res) {
  const urlSlug = req.params.urlSlug;

  db.get(
    `SELECT * FROM products WHERE urlSlug = ?`,
    [urlSlug],
    (err, product) => {
      if (err) {
        console.error("Database query failed:", err.message);
        return res.status(500).send("Database error");
      }

      if (!product) {
        return res.status(404).send("Product not found");
      }

      // Get all products info and use for "Reccomended products"
      db.all(`SELECT * FROM products`, [], (err, products) => {
        if (err) {
          console.error('Database query error:', err.message);
          return res.status(500).send('Database error occurred');
        }

      // Render the template with product data
      res.render('productdetails', {
        title: product.name,
        product,
        products,
      });
      });
    }
  );
});

// GET /products/:urlSlug (t.ex. /eyeliner-black-NYX)

/*router.get('/:urlSlug', function (req, res) {

  const urlSlug = req.params.urlSlug;

  const product = db
      .prepare(`
    SELECT id, name, description, price
      FROM products
     WHERE url_slug = ?
  `).get(urlSlug);

  // Rendera template .\views\productsdetails.ejs, och skicka in 
  // variablerna title och product, som används inne i denna.
  res.render('productdetails', {
      title: product.name,
      product
  });
});*/

module.exports = router;