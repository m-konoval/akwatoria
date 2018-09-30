<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="Замовлення води, заказ воды, вода, доставка, замовлення,
        доставка поки по Києву, доставка води, Авкватория, Aqua,
        Akwa, akwatoria, water, чиста вода, екологічна вода, фільтрована вода, вода в бутлях, бутлі з водою,
        бутельована вода, чистая вода, бутелированая вода, очищеная вода, бутель с водой,
        доставка воды, по Киеву, доставка Акваторія, доставка води акваторія, вода Акваторія" />
    <meta name="description" content="Акватория - води територія, доставка води по киеву." />

    <link rel="icon" href="<?php echo THEME_URI; ?>/img/favicon.png" type="image/x-icon">

    <title>
        <?php $title = wp_title("", true); echo "&#32;"; bloginfo('description'); ?>
    </title>

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

                <div class="btn" id="order">Замовити воду</div>
                <div class="btn" id="callback">Передзвонити</div>

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