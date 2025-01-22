var express = require('express');
var router = express.Router();
var sqlite3 = require('sqlite3');
var path = require('path');

// Connect to the database
// Initialize database connection
// Initialize database connection
const db = new sqlite3.Database(path.join(__dirname, "../products.db"), (err) => {
  if (err) {
    console.error("Database connection failed:", err.message);
  } else {
    console.log("Connected to the database: /products.db");
  }
});

/* GET home page. */
router.get('/', function(req, res, next) {

  // TODO: Hämta produkterna från databasen

  db.all("SELECT id, image, name, brand, price FROM products", [], (err, rows) => {
    if (err) {
      console.error(err.message);
      return res.status(500).send("Database query failed.");
    }

     // Log the rows to see if data is being fetched
     console.log("Fetched products:", rows);

    // Render .views/index.ejs with the fetched products
    res.render("index", { title: 'Harmony by CMK', products: rows });
  });

  // const products = [
  //   { name: "Svart T-Shirt" }
  // ];

  // res.render('index', { title: 'Harmony by CMK', products });
});

module.exports = router;
