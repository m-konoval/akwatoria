<?php get_header(); ?>

<main class="container main page">

    <?php
        $home = get_page_by_path('contact');
        $home_q = new WP_Query( array( 'page_id' => $home-> ID ) );

        if( $home_q -> have_posts() ) {
            while( $home_q -> have_posts() ) {
                $home_q->the_post(); ?>

                <h2><?php the_title(); ?></h2>

                <div class="content-formatting">
                    <?php the_content();?>
                </div>

            <?php } wp_reset_postdata();
        }
    ?>


    <!-- contact-form -->
    <form class="contact-form" method="post" action="<?php echo THEME_URI; ?>/form-actions/contact.php">
        <div class="title">Форма зворотнього зв'язку</div>
        <div class="_col">
            <label class="text" for="message">Коментарій</label>
            <textarea name="message" required ></textarea>
        </div>
        <div class="_row form-block">
        <div class="_col">
            <label for="name">Ім'я</label>
            <input class="input" type="text"  placeholder="" maxlength="50" required />
        </div>
        <div class="_col">
            <label for="email">Email:</label>
            <input class="input" type="email" name="email" placeholder="" maxlength="120" required />
        </div>
        <button class="submit" type="submit">Відправити</button>
    </div>






    </form>
    <!-- end contact-form -->




</main>

<?php get_footer(); ?>contact-form