<?php get_header(); ?>

<main class="clearfx">

    <div class="inside">
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
    </div>

</main><!-- /MAIN -->

<?php get_footer(); ?>