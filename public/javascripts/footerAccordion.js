document.addEventListener('DOMContentLoaded', function() {
    const accordionItems = document.querySelectorAll('.accordion-item');

    accordionItems.forEach(item => {
        const header = item.querySelector('.accordion-button');
        
        header.addEventListener('click', function() {
            // active class changing
            item.classList.toggle('active');
        });
    });

    // responsive. accordion active/diactive
    function checkScreenSize() {
        if (window.innerWidth >= 768) {
            accordionItems.forEach(item => {
                item.classList.add('active');
            });
        } else {
            accordionItems.forEach(item => {
                item.classList.remove('active');
            });
        }
    }

    //Check the screen size
    checkScreenSize();
    window.addEventListener('resize', checkScreenSize);
});
