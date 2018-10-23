
<div class="category__body jsCategoryFilter">
<?php
    global $post;
    $per_page  = 10;
    $all_posts = wp_count_posts( 'post' )->publish;
    $cur_cat   = $current_cat -> slug;
    $CAT_arg   = array(
        'posts_per_page' => $per_page,
        'category_name' => $cur_cat
    );

    $CAT_scope = new WP_Query($CAT_arg);

    if( $CAT_scope -> have_posts() ) {
        while( $CAT_scope -> have_posts() ) { $CAT_scope -> the_post(); ?>

            <div class="category__item">
                <a href="<?php echo get_permalink(); ?>" class="category__item-link">
                    <span class="category__item-mask">
                        <i class="icon-search-plus"></i>
                    </span>
                    <figure href="#" class="category__item-img">
                        <?php xs_post_thumbnail( array( 'image_size' => 'image-size-300x300' ) ); ?>
                    </figure>
                    <span class="category__item-details _col">
                        <h3 class="category__item-title"><?php the_title(); ?></h3>
                        <span class="category__item-price _row">
                            <span>Ціна:</span>
                            <span>800грн.</span>
                        </span>
                    </span>
                </a>
            </div>

        <?php } // endwhile ?>
    <?php } // endif ?>
</div>

<?php if ($all_posts > $per_page ) { ?>
    <button id="load-more" class="loadM">
        <span>Load More</span>
        <img class="loader" src="<?php echo THEME_URI; ?>/img/load-more.gif" alt="">
    </button>
<?php } // endif ?>

<?php
    $CAT_scope_options = array(
        'per_page' => $per_page,
        'all_post' => $all_posts
    );
?>

<input type="hidden" name="portfolio-options"
    id="port-opt"
    data-current='1'
    value='<?php echo json_encode($CAT_scope_options); ?>'>
