<?php get_header(); ?>

<main class="container main">

    <?php
        if( is_page('home') ) {
            include('/components/home/price-table.php');
            include('/components/home/main-slider.php');
        }
    ?>

</main><!-- /container -->

<?php get_footer(); ?>