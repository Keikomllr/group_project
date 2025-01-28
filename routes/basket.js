var express = require('express');
var router = express.Router();
const path = require("path");
const dbPath = path.join(__dirname, "../products.db");

const sqlite3 = require("sqlite3").verbose(); // Correct usage for sqlite3.verbose()

// Initialize the database connection
const db = new sqlite3.Database(dbPath, (err) => {
    if (err) {
        console.error("Error opening database:", err.message);
    } else {
        console.log("Connected to the SQLite database.");
    }
});


// GET route
router.get("/", function (req, res) {
    let basket = req.session.basket ?? [];

    res.render("basket", {
        title: "Shopping Basket",
        basket,
    });
});

// POST route
router.post("/", function (req, res) {
    const productId = req.body.productId;

    let basket = req.session.basket ?? [];
    let basketItem = basket.find(x => x.product.id == productId);

    if (basketItem) {
        basketItem.quantity += 1;
    } else {
        // Fetch the product from the database
        db.get(
            `SELECT id, name, description, price 
             FROM products 
             WHERE id = ?`, // Use a single `?` for placeholders in sqlite3
            [productId],
            (err, product) => {
                if (err) {
                    console.error("Error fetching product:", err.message);
                    res.status(500).send("Error fetching product.");
                } else if (product) {
                    basketItem = {
                        product,
                        quantity: 1,
                    };

                    basket.push(basketItem);
                    req.session.basket = basket;

                    res.redirect("back");
                } else {
                    res.status(404).send("Product not found.");
                }
            }
        );
        return; // Return early because the database query is asynchronous
    }

    res.redirect("back");
});


// POST route to clear the basket
router.post("/clear", function (req, res) {
    req.session.basket = []; // Clear the basket by resetting it to an empty array
    res.redirect("/basket"); // Redirect back to the basket page
});

module.exports = router;