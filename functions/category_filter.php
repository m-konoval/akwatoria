<?php
if( defined('DOING_AJAX') && DOING_AJAX ) {

    function category_filter() {
        global $post;

        $current_page = intval($_POST['curruntPage']);
        $current_cat  = $_POST['currentCat'];
        $load_more    = $_POST['loadMore'];
        $post_on_page = $_POST['postOnPage'];

        // post in cetagory
        if ($current_cat == '') {
            $count_post_in_cat = wp_count_posts( 'post' )->publish;
        } else {
            $count_post_in_cat = get_category_by_slug($current_cat)->category_count;
        }

        $load_args = array(
            'posts_per_page' => $post_on_page,
            'category_name'  => $current_cat
        );

        if($load_more == 'true') {
            $load_args['paged'] = $current_page + 1;
        } else {
            $load_args['paged'] = $current_page;
        }

        $load_query = new WP_Query( $load_args );

        if( $load_query -> have_posts()) {
            ob_start();
            while( $load_query -> have_posts() ) { $load_query -> the_post(); ?>

                <div class="wrap-item someClass">
                    <a href="<?php echo get_permalink(); ?>" class="item">
                        <span class="mask">
                            <i class="icon-search-plus"></i>
                        </span>
                        <figure href="#" class="item-img">
                            <?php xs_post_thumbnail( array( 'image_size' => 'image-size-280x220' ) ); ?>
                        </figure>
                        <h3 class="title"><?php the_title(); ?></h3>
                    </a>
                </div>

            <?php } // endwhile
            $content_posts = ob_get_contents();
            ob_end_clean();
        } // endif


        wp_reset_query();
        echo json_encode( array(
            'content_post'  => $content_posts,
            'cont_post'     => $count_post_in_cat,
            'active_page'   => $load_args['paged']
        ));
        wp_die();
    }

    add_action( 'wp_ajax_filter_load', 'category_filter' );
    add_action( 'wp_ajax_nopriv_filter_load', 'category_filter' );
}
