﻿function galeria() {

    var $container = $('#gallery_container'),
        $filters = $("#filters a");

    $container.imagesLoaded(function () {
        $container.isotope({
            itemSelector: '.photo',
            masonry: {
                columnWidth: 102
            }
        });
    });

    // filter items when filter link is clicked
    $filters.click(function () {
        $filters.removeClass("active");
        $(this).addClass("active");
        var selector = $(this).data('filter');
        $container.isotope({ filter: selector });
        return false;
    });


}


$(function () {

    galeria();


});