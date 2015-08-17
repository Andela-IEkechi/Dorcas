
function navbarAddClass() {
    if($(this).scrollTop() > 75) {
        $('nav').addClass('scroll-bg');
    } else {
        $('nav').removeClass('scroll-bg');
    }
}

// jQuery Actions & Events
$('.dropdown-toggle').dropdown();

$(window).on('scroll', function() {
    navbarAddClass();
});

// Call default functions
(function() {
    // set class for navbar
    navbarAddClass();
})();