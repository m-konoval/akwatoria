    <footer class="clearfix container">
        <div class="copy">&copy; Всі права захищені АКВАТОРІЯ <?php echo date(Y); ?>p.</div>
    </footer><!-- /footer -->

    <!-- POPUP-addres -->
    <div class="wrapPop" id="popup__order">
        <div class="popup">
            <form action="<?php echo THEME_URI; ?>/mailto.php" method="post" class="form_pop">
                <label for="u-name">Введіть ім'я:</label>
                <input type="text" placeholder="Ваше ім'я..." id="u-name" name="u_name" required>
                <label for="u-phone">Введіть номер телефона:</label>
                <input type="text" placeholder="Ваш телефон..." id="u-phone" name="u_phone" required>
                <label for="u-location">Введіть вашу адресу:</label>
                <input type="text" placeholder="Ваша адреса..." id="u-location" name="u_location" required>
                <p>Кількість бутелів :</p>
                <div class="count_bottle">
                    <div id="minus_b" data-attr="-">-</div>
                    <input type="text" name="count_b" value="1" id="countBotle" onmousedown="return false">
                    <div id="plus_b" data-attr="+">+</div>
                </div>
                <button class="send">Замовити</button>
                <button class="close"></button>
            </form>
        </div>
    </div>


    <!-- POPUP-Call -->
    <div class="wrapPop" id="popup__call">
        <div class="popup">
            <form action="<?php echo THEME_URI; ?>/callback.php" class="form_pop" method="post">
                <label for="call_phone">Ваш номер телефону</label>
                <input type="text" id="call_phone" name="callback_phone" placeholder="Введіть номер ..." required>
                <button class="send">Передзвонити</button>
                <button class="close"></button>
            </form>
        </div>
    </div>

    <?php wp_footer(); ?>
</div>
</body>
</html>