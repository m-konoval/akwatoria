<?php get_header(); ?>

    <div class="container">
        <?php
            if ( have_posts() ) { ?>
                <?php while( have_posts()) {
                    the_post(); ?>

                    <div class="first_inside_div">
                    <h1><?php the_title(); ?></h1>

                    <section class="content-formatting">
                        <?php the_content();?>
                    </section><!--/content-formatting-->

                    </div>
                <?php } //endwhile ?>
            <?php } //endif
        ?>
    </div>


<?php get_footer(); ?>