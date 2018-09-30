<?php
    $shelves = get_category_by_slug('shelves');
    $coolers = get_category_by_slug('coolers');
    $pumps = get_category_by_slug('pumps');
    $dispensers = get_category_by_slug('dispensers');
    $water = get_category_by_slug('water');
?>

<ul class="slider-main clearfix">
    <li>
        <img src="<?php echo THEME_URI; ?>/img/desks.jpg" alt="<? echo $shelves -> name; ?>">
        <a href="<?php echo get_category_link($shelves -> cat_ID ); ?>" class="wrap-mask">
            <span class="mask"><? echo $shelves -> name; ?></span>
            <span class="price_desc"><? echo $shelves -> category_description; ?></span>
        </a>
    </li>
    <li>
        <img src="<?php echo THEME_URI; ?>/img/culler.jpg" alt="<? echo $coolers -> name; ?>">
        <a href="<?php echo get_category_link($coolers -> cat_ID ); ?>" class="wrap-mask">
            <span class="mask"><? echo $coolers -> name; ?></span>
            <span class="price_desc"><? echo $coolers -> category_description; ?></span>
        </a>
    </li>
    <li>
        <img src="<?php echo THEME_URI; ?>/img/pompa.jpg" alt="<? echo $pumps -> name; ?>">
        <a href="<?php echo get_category_link($pumps -> cat_ID ); ?>" class="wrap-mask">
            <span class="mask"><? echo $pumps -> name; ?></span>
            <span class="price_desc"><? echo $pumps -> category_description; ?></span>
        </a>
    </li>
    <li>
        <img src="<?php echo THEME_URI; ?>/img/dispenser.jpg" alt="<? echo $dispensers -> name; ?>">
        <a href="<?php echo get_category_link($dispensers -> cat_ID ); ?>" class="wrap-mask">
            <span class="mask"><? echo $dispensers -> name; ?></span>
            <span class="price_desc"><? echo $dispensers -> category_description; ?></span>
        </a>
    </li>
    <li>
        <img src="<?php echo THEME_URI; ?>/img/water.jpg" alt="<? echo $water -> name; ?>">
        <a href="<?php echo get_category_link($water -> cat_ID ); ?>" class="wrap-mask">
            <span class="mask"><? echo $water -> name; ?></span>
            <span class="price_desc"><? echo $water -> category_description; ?></span>
        </a>
    </li>
</ul><!-- /section-1 -->