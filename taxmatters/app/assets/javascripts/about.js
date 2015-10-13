
$(window).load(function() {
    $('#slider').nivoSlider({
         animSpeed: 500, // Slide transition speed
         pauseTime: 3000, // How long each slide will show
         startSlide: 0, // Set starting Slide (0 index)
         directionNav: true, // Next & Prev navigation
         directionNavHide: false, // Only show on hover
         controlNav: true, // 1,2,3... navigation
         controlNavThumbs: true, // Use thumbnails for Control Nav
         pauseOnHover: true, // Stop animation while hovering
         manualAdvance: false, // Force manual transitions
         prevText: 'Previous Picture', // Prev directionNav text
         nextText: 'Next Picture', // Next directionNav text
         randomStart: false, // Start on a random slide
         beforeChange: function(){
            
                        }, // Triggers before a slide transition
    });
});