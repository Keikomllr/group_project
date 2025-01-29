  // Select the product container
  const productContainer = document.querySelector('.recommended-products');

  // Function to update displayed products based on screen size
  function updateDisplayedProducts() {
    const isSmallScreen = window.matchMedia("(max-width: 768px)").matches;
    const products = Array.from(productContainer.children);

    // Hide or show products based on screen size
    products.forEach((product, index) => {
      if (isSmallScreen) {
        // Show only 3 products on small screens
        product.style.display = index < 3 ? "block" : "none";
      } else {
        // Show 4 products on larger screens
        product.style.display = index < 4 ? "block" : "none";
      }
    });
  }

  // Initial call
  updateDisplayedProducts();

  // Listen for screen resize events
  window.addEventListener("resize", updateDisplayedProducts);

