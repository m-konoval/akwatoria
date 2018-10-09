<?php
    $home = get_page_by_path('home');
    $home_q = new WP_Query( array( 'page_id' => $home-> ID ) );

    if( $home_q -> have_posts() ) {
        while( $home_q -> have_posts() ) {
            $home_q->the_post(); ?>

            <div class="info-block">
                <?php the_content();?>
            </div>

         <?php } wp_reset_postdata();
    }
?>