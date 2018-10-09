<?php

/* localize css/js */
function frontend_enqueue_scripts() {
    // Scripts
    wp_register_script( 'jquery', 'http' . ($_SERVER['SERVER_PORT'] == 443 ? 's' : '') . '://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js', false, null);
    wp_register_script( 'owl-js', THEME_URI . '/js/owl.carousel.min.js', array(), '1.0.0', true);
    wp_register_script( 'init', THEME_URI . '/js/init_script.js', array(), '1.0.0', true);
    wp_register_script( 'filter', THEME_URI . '/js/filter-category.js', array(), '1.0.0', true);

    wp_localize_script('init', 'AJAX_OBJ', array( 'url' => admin_url( 'admin-ajax.php' )));

    wp_enqueue_script( 'jquery' );
    wp_enqueue_script( 'owl-js');
    wp_enqueue_script( 'init');
    wp_enqueue_script( 'filter');


    // Styles
    wp_register_style( 'theme', THEME_URI . '/style.css' );
    wp_register_style( 'owl-style', THEME_URI . '/css/owl.carousel.css' );
    wp_register_style( 'content-formatting', THEME_URI . '/css/content-formatting.css' );
    wp_register_style( 'font-open-sans', 'https://fonts.googleapis.com/css?family=Open+Sans&amp;subset=cyrillic' );
    wp_register_style( 'font-mark-script', 'https://fonts.googleapis.com/css?family=Marck+Script' );
    wp_register_style( 'main-style', THEME_URI . '/css/style.css' );

    wp_enqueue_style( 'theme' );
    wp_enqueue_style( 'font-open-sans' );
    wp_enqueue_style( 'font-mark-script' );
    wp_enqueue_style( 'owl-style' );
    wp_enqueue_style( 'content-formatting' );
    wp_enqueue_style( 'main-style' );
}
add_action( 'wp_enqueue_scripts', 'frontend_enqueue_scripts' );