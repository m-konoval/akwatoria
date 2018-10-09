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

    <title>Контакти | Доставка питної води в Києві - Акваторія вода для дому і для офісу!</title>

    <link href="https://fonts.googleapis.com/css?family=Open+Sans&amp;subset=cyrillic" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="icon" href="img/favicon.png" type="image/x-icon">
</head>
<body>
<div class="wrap-site">
    <div class="wrap-header">
        <header class="clearfix container">
            <div class="block">
                <div class="logo-panel">
                    <a href="index.php" class="logo">
                        <img src="img/logo_h.png" alt="">
                    </a>
                </div>

                <div class="btn" id="order">Замовити</div>
                <div class="btn" id="callback">Передзвонити</div>

                <div class="phones">
                    <a href="tel:+380673178202">+38 (067) 317-82-02</a>
                    <a href="tel:+380953424740">+38 (095) 34-24-740</a>
                </div>
            </div>

            <div class="block menu">
                <ul>
                    <li><a href="index.php">Головна</a></li>
                    <li><a href="">Обладнання</a></li>
                    <li><a href="">Ціна та доставка</a></li>
                    <li><a href="">Акції</a></li>
                    <li><a href="">Контакти</a></li>
                </ul>
            </div>
        </header><!-- /header -->
    </div>

    <div class="container">

    </div><!-- /container -->


    <footer class="clearfix container">
    </footer><!-- /footer -->


    <!-- POPUP-addres -->
    <div class="wrapPop" id="popup__order">
        <div class="popup">
            <form action="mailto.php" method="post" class="form_pop">
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
            <form action="callback.php" class="form_pop" method="post">
                <label for="call_phone">Ваш номер телефону</label>
                <input type="text" id="call_phone" name="callback_phone" placeholder="Введіть номер ..." required>
                <button class="send">Передзвонити</button>
                <button class="close"></button>
            </form>
        </div>
    </div>

    <!-- JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/init_script.js" type="text/javascript"></script>
</div>
</body>
</html>