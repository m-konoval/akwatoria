<?php get_header(); ?>

<main class="container main page">

    <?php
        $home = get_page_by_path('about_water');
        $home_q = new WP_Query( array( 'page_id' => $home-> ID ) );

        if( $home_q -> have_posts() ) {
            while( $home_q -> have_posts() ) {
                $home_q->the_post(); ?>

                <h2><?php the_title(); ?></h2>

                <div class="content-formatting">
                    <?php the_content();?>
                </div>

            <?php } wp_reset_postdata();
        }
    ?>

</main>

<?php get_footer(); ?>