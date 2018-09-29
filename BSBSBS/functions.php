<?php

define( 'THEME_URI', get_template_directory_uri() );
define( 'HEAD_OPTION_PAGE', 25 );


/* clean head */
remove_action( 'wp_head', 'feed_links_extra', 3 );
remove_action( 'wp_head', 'feed_links', 2 );
remove_action( 'wp_head', 'rsd_link' );
remove_action( 'wp_head', 'wlwmanifest_link' );
remove_action( 'wp_head', 'index_rel_link' );
remove_action( 'wp_head', 'parent_post_rel_link', 10, 0 );
remove_action( 'wp_head', 'start_post_rel_link', 10, 0 );
remove_action( 'wp_head', 'adjacent_posts_rel_link', 10, 0 );
remove_action( 'wp_head', 'adjacent_posts_rel_link_wp_head', 10, 0 );
remove_action( 'wp_head', 'wp_shortlink_wp_head', 10, 0 );
remove_action( 'wp_head', 'wp_generator' );
remove_action( 'wp_head', 'rest_output_link_wp_head', 10 );
remove_action( 'wp_head', 'wp_oembed_add_discovery_links', 10 );
remove_action( 'wp_head', 'wp_site_icon', 99 );


/* localize css/js */
function frontend_enqueue_scripts() {

    // Register Scripts
    wp_register_script('jquery', "http" . ($_SERVER['SERVER_PORT'] == 443 ? "s" : "") . "://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js", false, null);
    wp_register_script( 'owl-js', THEME_URI . '/js/owl.carousel.min.js', array(), '1.0.0', true);
    wp_register_script( 'init', THEME_URI . '/js/init_script.js', array(), '1.0.0', true);

    // Register Styles
    wp_register_style( 'main-style', THEME_URI . "/css/custom.css" );

    // Enqueue Scripts
    wp_enqueue_style( 'main-style');

    // Enqueue Styles
    wp_enqueue_script( 'jquery' );
    wp_enqueue_script( 'owl-js');
    wp_enqueue_script( 'init');
}
add_action( 'wp_enqueue_scripts', 'frontend_enqueue_scripts' );


/* Регистрация меню */
register_nav_menu( 'main_menu', 'Главное меню' );


/* Устанавливаем размер миниатюрам */
if ( function_exists( 'add_image_size' ) ) {
    add_image_size( 'image-size-280x220', 280, 220, true );
    add_image_size( 'image-size-253x165', 253, 165, true );
}
if (function_exists('add_theme_support'))
    add_theme_support('post-thumbnails');