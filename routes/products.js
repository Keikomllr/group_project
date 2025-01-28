const express = require("express");
const sqlite3 = require("sqlite3").verbose();
const path = require("path");
const router = express.Router();

// Connect to the database
// Initialize database connection
const db = new sqlite3.Database(path.join(__dirname, "../products.db"), 
/*(err) => {
    if (err) {
      console.error("Database connection failed:", err.message);
    } else {
      console.log("Connected to the database: /products.db");
    }
  } */
    );
  
  

// Define the route for the home page
router.get("/", (req, res) => {
  db.all("SELECT id, urlSlug, image, name, brand, price FROM products", [], 
    (err, rows) => {
    /*if (err) {
      console.error(err.message);
      return res.status(500).send("Database query failed.");
    }*/

     // Log the rows to see if data is being fetched
     console.log("Fetched products:", rows);

    // Render index.ejs with the fetched products
    res.render("index", { products: rows });
  });
});

module.exports = router;
