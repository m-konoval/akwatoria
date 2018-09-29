<?php get_header(); ?>

    <div class="container">
        <div class="info-block">
            <p>Супер ціна до кінця року - <b>40 грн.</b> за бутель !</p>
        </div>

        <ul class="slider-main clearfix jsSliderMain">
            <?php $page_delivery = get_page_by_path( 'prices_and_delivery' ); ?>
            <li>
                <img src="<?php echo get_the_post_thumbnail_url($page_delivery -> ID); ?>" alt="">
                <a href="<?php echo get_permalink($page_delivery -> ID); ?>"><?php echo $page_delivery -> post_title; ?></a>
            </li>
            <?php
                $categories = get_categories();
                foreach( $categories as $cat ) { if ( is_category() ) { ?>
                    <li> <?php $thumb_cat = get_field('cat_thumb', 'category_' . $cat->term_id );
                        if ( !empty($thumb_cat) ) { ?><img src="<?php echo $thumb_cat ?>" alt=""><?php } ?>
                        <a  href="<?php echo get_category_link( $cat->term_id ); ?>"><?php echo $cat->name; ?></a>
                    </li>
                    <?php } else { ?>
                    <li> <?php $thumb_cat = get_field('cat_thumb', 'category_' . $cat->term_id );
                        if ( !empty($thumb_cat) ) { ?> <img src="<?php echo $thumb_cat ?>" alt=""> <?php } ?>
                        <a  href="<?php echo get_category_link( $cat->term_id ); ?>"><?php echo $cat->name; ?></a>
                    </li>
                <?php }/* end_else */
            }/* end_foreach */ ?>
        </ul><!-- category slider -->
    </div><!-- /container -->

<?php get_footer(); ?>