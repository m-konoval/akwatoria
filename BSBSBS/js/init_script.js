(function (GLOBAL, $, undefined) {
    'use strict';
    var AQT = {},
        DOC = GLOBAL;


    /* INIT ARGUMENTS */
    /* -------------------------------- */
    AQT.TAGS = {
        POPUP: {
            ORDER: {
                button: '.jsOrder',
                form: '.jsOrderPopupForm'
            },
            CALLBACK: {
                button: '.jsCallBack',
                form: '.jsCallBackPopupForm'
            }
        },
        CLOSE: '.close',
        SLIDER_MAIN: ".jsSliderMain"
    };
    AQT.OPTION = {
        SLIDER_MAIN: {
            center: true,
            items: 5,
            loop: true,
            autoplay: true,
            margin: 0,
            animateOut: 'fadeOut',
            nav: false,
            dots: false
        }
    };


    /* METHODS */
    /* -------------------------------- */
    AQT.popupToggling = function (btn, form) {
        $(btn).on('click', function () {
            $(form).fadeIn(300);
        });

        $(AQT.TAGS.CLOSE).on('click', function () {
            $(form).fadeOut(300);
        });
    }; // end_popup
    AQT.calcWater = function () {
        var args = {
            MAIN: '#countBotle',
            MINUS: '#minus_b',
            ADD: '#plus_b',
            DISABLED: 'disabled',
            DATA: 'data-attr',
            SYMBOLS: {
                ADD: "+",
                MINUS: "-"
            }
        };

        this.eventCalc = function () {
            var countB = parseInt(args.MAIN.val());
            if (countB <= 1) {
                args.MINUS.addClass(args.DISABLED);
            } else if (countB >= 21) {
                args.ADD.addClass(args.DISABLED);
            } else {
                if (args.MINUS.hasClass(args.DISABLED)) {
                    args.MINUS.removeClass(args.DISABLED);
                }
                if (args.ADD.hasClass(args.DISABLED)) {
                    args.ADD.removeClass(args.DISABLED);
                }
            }

            if (countB >= 0 && countB <= 21 && !$(this).hasClass(args.DISABLED)) {
                if ($(this).attr(args.DATA) === args.SYMBOLS.MINUS) {
                    countB = countB - 1;
                    args.MAIN.val(countB);

                } else if ($(this).attr(args.DATA) === args.SYMBOLS.ADD) {
                    countB = countB + 1;
                    args.MAIN.val(countB);
                }
            }
        }

        $(args.MINUS).on('click', this.eventCalc);
        $(args.ADD).on('click', this.eventCalc);
    } // end_CALC


    /* init METHOD */
    /* -------------------------------- */
    AQT.init = function () {
        AQT.popupToggling(AQT.TAGS.POPUP.ORDER.button, AQT.TAGS.POPUP.ORDER.form);
        AQT.popupToggling(AQT.TAGS.POPUP.CALLBACK.button, AQT.TAGS.POPUP.CALLBACK.form);
        AQT.calcWater();

        $(AQT.TAGS.SLIDER_MAIN).owlCarousel(AQT.OPTION.SLIDER_MAIN);
    };
    AQT.init();

})(this, jQuery);