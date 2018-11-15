<?php get_header(); ?>

<main class="container main single">

    <?php
        global $post;

        if ( have_posts() ) { while( have_posts()) { the_post(); ?>

            <div class="single__article">
                <div class="single__breadcrumb"><?php echo do_shortcode( '[breadcrumb]' ); ?></div>
                <h1 class="single__title"><?php the_title(); ?></h1>

                <!-- Post -->
                <div class="post">
                    <?php
                        $images = acf_photo_gallery('post_gallery', $post->ID);
                        $dotItemIndex = 0;

                    if( $images ): ?>
                        <!-- Gallery -->
                        <div class="galery">

                            <!-- owl-carousel-1 -->

                           <div class="wrap-owl-carousel-1">
                                <div class="owl-carousel-1 jsPostSlider">
                                <?php foreach( $images as $image ): ?>
                                    <div data-fancybox="gallery" data-src="<?php echo $image['full_image_url']; ?>" class="item">
                                        <img src="<?php echo $image['full_image_url']; ?>">
                                    </div>
                                <?php endforeach; ?>
                                </div>
                            </div>

                            <!-- owl-carousel-2 -->
                            <div class="owl-carousel-2 jsPostDots">
                                <?php foreach( $images as $image ): ?>
                                    <div class="item jsDotItem" data-index="<?php echo $dotItemIndex?>">
                                        <img src="<?php echo $image['thumbnail_image_url']; ?>">
                                    </div>

                                    <?php $dotItemIndex++; ?>
                                <?php endforeach; ?>
                            </div>
                        </div>
                        <!-- end Gallery -->
                    <?php endif; ?>

                    <!--/content-formatting-->
                    <div class="content-formatting"><?php the_content();?></div>
                </div>
                <!-- end Post -->

            </div>
            <?php } //endwhile ?>
        <?php } //endif
    ?>
</main>


<?php get_footer(); ?>