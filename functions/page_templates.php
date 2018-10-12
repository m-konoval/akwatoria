<?php

add_filter( 'template_include', 'portfolio_page_template', 99 );

    function portfolio_page_template( $template ) {
        if( is_page('about_water') ) {
            if ( $new_template = locate_template( array( '/components/about-water/about-water.php' ) ) )
            $template = $new_template ;
        }

        if( is_page('contact') ) {
            if ( $new_template = locate_template( array( '/components/contact/contact.php' ) ) )
            $template = $new_template ;
        }

    return $template;
}