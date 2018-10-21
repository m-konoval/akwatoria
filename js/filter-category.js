jQuery(document).ready(function($) {
    var $BTN_LOAD_MORE = $('#load-more');

    var BTN_FILTER = '.jsFilter',
        LOAB_BTN_CLASS = 'loadM';



    /* loading Post on page */
    /* ===========================*/
    function loadPost (loadTriger, actionBTN) {
        var CONTAINER            = '.jsCategoryFilter',
            CONTAINER_LOAD_CLASS = 'loadPortfolio';

        if( $(CONTAINER).hasClass(CONTAINER_LOAD_CLASS) )
            { return false; }

        var CURRENT_CATEGORY,
            currentClass = 'category__filter_current',
            attr_index   = 'data-index',
            attr_current = 'data-current';

        var $WEB_OPTIONS   = $('input#port-opt'),
            $currentFilter = $('.' + currentClass);



        // load more "false"
        if( !loadTriger ) {
            if( actionBTN.hasClass(currentClass) )
                { return false; }

            $WEB_OPTIONS.attr(attr_current, 1);
            CURRENT_CATEGORY = actionBTN.attr(attr_index);
        } else {
            CURRENT_CATEGORY = $currentFilter.attr(attr_index);
        }

        var curPage     = parseInt($WEB_OPTIONS.attr(attr_current)),
            mainOptions = JSON.parse($WEB_OPTIONS.val()),
            postPerPage = parseInt(mainOptions.per_page),
            allPosts    = parseInt(mainOptions.all_post);


        $.post({
            url      : AJAX_OBJ.url,
            dataType : 'json',
            data     : {
                'action'      : 'filter_load',
                'curruntPage' : curPage,
                'currentCat'  : CURRENT_CATEGORY,
                'loadMore'    : loadTriger,
                'postOnPage'  : postPerPage,
            },
            beforeSend: function() {

                // load more "true"
                if( loadTriger ) {
                    $BTN_LOAD_MORE.addClass('loading');
                    $BTN_LOAD_MORE.find('img.loader').fadeIn(550);
                    $BTN_LOAD_MORE.find('span').css('opacity', '0');
                }

                if( !loadTriger ) {
                    $(CONTAINER).html('');
                }

                $(CONTAINER).addClass(CONTAINER_LOAD_CLASS);
            },
            success: function(data) {
                if (data) {

                    // variables
                    var postContent = data.content_post;
                    var countPost   = parseInt(data.cont_post);
                    var activePage  = parseInt(data.active_page);
                    var sumPost     = activePage * postPerPage;
                    $(CONTAINER).append(postContent);


                    // load more "true"
                    if( loadTriger ) {
                        $BTN_LOAD_MORE.find('img.loader').hide();
                        $BTN_LOAD_MORE.find('span').css('opacity', '1');
                        $BTN_LOAD_MORE.removeClass('loading');

                        $WEB_OPTIONS.attr(attr_current, activePage);
                    }


                    // load more "false"
                    if( loadTriger === false ) {
                        $(BTN_FILTER).removeClass(currentClass);
                        actionBTN.addClass(currentClass);

                        $WEB_OPTIONS.attr(attr_current, 1);
                    }


                    // load Btn label
                    if( sumPost >= countPost) {
                        $BTN_LOAD_MORE.removeClass(LOAB_BTN_CLASS);
                        $BTN_LOAD_MORE.find('span').text('it all works');
                    } else {
                        $BTN_LOAD_MORE.addClass(LOAB_BTN_CLASS);
                        $BTN_LOAD_MORE.find('span').text('load more');
                    }


                    $(CONTAINER).removeClass(CONTAINER_LOAD_CLASS);
                } else {
                    console.log('false success', jqXHR + " :: " + textStatus + " :: " + errorThrown);
                }
            },
            error: function() {
                console.log('error ajax', jqXHR + " :: " + textStatus + " :: " + errorThrown);
            }
        });
    } // loadPost



    // 'load more' event
    $BTN_LOAD_MORE.on('click', function() {
        if ( $(this).hasClass(LOAB_BTN_CLASS) ) {
            loadPost(true, $(this));
        }
    });

    // 'filter' event
    $(BTN_FILTER).on('click', function() {
        loadPost(false, $(this));
        return false;
    });

}); // ready