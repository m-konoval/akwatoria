<?php get_header(); ?>

<div class="container">

    <?php
        if( is_page('home') ) {
            include('/components/home/price-table.php');
            include('/components/home/main-slider.php');
        }
    ?>

</div><!-- /container -->

<?php get_footer(); ?>