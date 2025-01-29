document.addEventListener("DOMContentLoaded", () => {
    const dropdownButton = document.querySelector(".dropdownButton");
    const dropdownMenu = document.querySelector(".dropdownMenu");
    const dropdown = document.querySelector(".dropdown");

    // Ensure the elements exist
    if (!dropdownButton || !dropdownMenu || !dropdown) {
        console.error('Missing required elements');
        return;
    }

    // Toggle the dropdown menu visibility on button click
    dropdownButton.addEventListener("click", (event) => {
      event.stopPropagation(); // Prevent the click from propagating to the document
      console.log('Dropdown button clicked'); // For debugging
      dropdownMenu.classList.toggle("active");
    });

    // Close the dropdown if clicked outside
    document.addEventListener("click", (event) => {
      console.log('Document clicked'); // For debugging
      // If the click is outside the dropdown (button or menu), close the menu
      if (!dropdown.contains(event.target)) {
        console.log('Click was outside the dropdown'); // For debugging
        dropdownMenu.classList.remove("active");
      }
    });
});