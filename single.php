<?php get_header(); ?>

<main class="container main single">

    <?php
        if ( have_posts() ) { ?>
            <?php while( have_posts()) {
                the_post(); ?>
            <div class="single__article">
                <div class="single__breadcrumb">
                    <?php echo do_shortcode( '[breadcrumb]' ); ?>
                </div>

                <h1 class="single__title">
                    <?php the_title(); ?>
                </h1>


                <section class="content-formatting">
                    <?php the_content();?>
                </section><!--/content-formatting-->
            </div>
            <?php } //endwhile ?>
        <?php } //endif
    ?>
</main>


<?php get_footer(); ?>