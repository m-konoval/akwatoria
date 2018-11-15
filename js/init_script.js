jQuery(document).ready(function($){
    $(".slider-main").owlCarousel({
        center: true,
        items: 3,
        loop: true,
        autoplay: true,
        margin: 10,
        animateOut: 'fadeOut',
        nav: true,
        dots: true
    }); // OWL


    function pupup(btn, form) {
        $(btn).on('click', function () {
            $(form).fadeIn(300);
        });

        $('.close').on('click', function () {
            $(form).fadeOut(300);
        })
    }
    pupup('#order', '#popup__order');
    pupup('#callback', '#popup__call');

    function calcWater() {
        var el = $('#countBotle');
        var minus = $('#minus_b');
        var plus = $('#plus_b');

        function event() {
            var countB = parseInt(el.val());
            if ( countB <= 1 ) {
                minus.addClass('disabled');
            } else if ( countB >= 21 ) {
                plus.addClass('disabled');
            } else {
                if ( minus.hasClass('disabled') ) {
                    minus.removeClass('disabled');
                }
                if ( plus.hasClass('disabled') ) {
                    plus.removeClass('disabled');
                }
            }

            if ( countB >= 0 && countB <= 21 && !$(this).hasClass('disabled') ) {
                if ($(this).attr('data-attr') === "-") {
                    countB = countB - 1;
                    el.val(countB);

                } else if ($(this).attr('data-attr') === "+") {
                    countB = countB + 1;
                    el.val(countB);
                }
            }
        }

        minus.on('click', event);
        plus.on('click', event);

    } calcWater();


    // дальше можеш писати свої скрипти
    var owlSingle = $('.jsPostSlider')
    owlSingle.owlCarousel({
        loop:true,
        margin:0,
        nav:false,
        dots:false,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:1
            },
            1000:{
                items:1
            }
        }
    })

    var owlDot = $('.jsPostDots');
    owlDot.owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        dots:false,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3
            },
            1000:{
                items:5
            }
        }
    })
    // дальше можеш писати свої скрипти


    // single gallery pagination
    /* ------------------------------------ */
    $('.jsDotItem').click(function () {
        var index = $(this).attr('data-index');
        owlSingle.trigger('to.owl.carousel', [index, 300, true]);
    });


});