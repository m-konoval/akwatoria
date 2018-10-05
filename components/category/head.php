<?php
    // CURRENT CATEGORY
    $current_cat    = get_the_category();
    $current_cat    = $current_cat[0];
    $current_id     = $current_cat->cat_ID;

    // ARRAYs
    $cat_arg = array (
        'child_of' => $current_id
    );

    // QUERYs
    $child_cats = get_categories($cat_arg);
    $is_childs  = count($child_cats);
?> <!-- end_vars -->

    <h2 class="category__title">
        <?php echo $current_cat -> name; ?>
    </h2>

<?php if ( $is_childs > 0 ) { ?>

    <div class="_row">
        <button class="category__filter jsFilter category__filter_current"
            data-index="<?php echo $current_cat -> slug; ?>">

            <?php echo $current_cat -> name; ?>
        </button>

    <?php for($i = 0, $l = $is_childs; $i < $l; ++$i) {
        $child_cat = $child_cats[$i];
    ?> <!-- for -->

        <button class="category__filter jsFilter"
            data-index="<?php echo $child_cat -> slug; ?>">

            <?php echo $child_cat -> name; ?>
        </button>

    <?php } // end_for ?>
    </div>
<?php } // end_if ?>