<?php
define( 'THEME_URI', get_template_directory_uri() );

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


/* INCLUDES */
/* -------------------------- */
include ('/functions/localize_sources.php');
include ('/functions/category_filter.php');
include ('/functions/page_templates.php');
include ('/functions/post-thumnail.php');


/* Регистрация меню */
register_nav_menu( 'main_menu', 'Главное меню' );


/* Устанавливаем размер миниатюрам */
if ( function_exists( 'add_image_size' ) ) {
    add_image_size( 'image-size-300x300', 300, 300, true );
}
if (function_exists('add_theme_support'))
    add_theme_support('post-thumbnails');



/* helpers */
function show_arr ($arr) {
    echo '<pre>' . print_r($arr, 1) . '</pre>';
}
