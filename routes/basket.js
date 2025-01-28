var express = require('express');
var router = express.Router();

const sqlite3 = require("sqlite3").verbose(); // Correct usage for sqlite3.verbose()

// Initialize the database connection
const db = new sqlite3.Database("../products.db", (err) => {
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
        title: "Varukorgen",
        basket,
    });
});

// POST route
router.post("/", function (req, res) {
    const productId = req.body.productId;

    let basket = req.session.basket ?? [];
    let basketItem = basket.find(x => x.productId == productId);

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

module.exports = router;