<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="<?php the_field('head_keywords', HEAD_OPTION_PAGE) ?>" />
    <meta name="description" content="<?php the_field('head_description', HEAD_OPTION_PAGE) ?>" />

    <title><?php wp_title(); ?></title>

    <link href="https://fonts.googleapis.com/css?family=Open+Sans&amp;subset=cyrillic" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">
    <link rel="icon" href="<?php echo THEME_URI; ?>/img/favicon.png" type="image/x-icon">

    <?php wp_head(); ?>
</head>
<body>
<div class="wrap-site">
    <div class="wrap-header">
        <header class="clearfix container">
            <div class="block">
                <div class="logo-panel">
                    <a href="/" class="logo">
                        <img src="<?php echo THEME_URI; ?>/img/logo_h.png" alt="">
                    </a>
                </div>

                <div class="btn jsOrder">Замовити</div>
                <div class="btn jsCallBack">Передзвонити</div>

                <div class="phones">
                    <a href="tel:+380673178202">+38 (067) 317-82-02</a>
                    <a href="tel:+380953424740">+38 (095) 34-24-740</a>
                </div>
            </div>

            <div class="block menu">
                <?php  wp_nav_menu( array( 'theme_location'  => 'main_menu' ) ); ?>
            </div>
        </header><!-- /header -->
    </div>