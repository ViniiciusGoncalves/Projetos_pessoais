<?php
session_start();
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sistema de Login - PHP + MySQL</title>
    <link rel="stylesheet" href="style.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>

</head>

<body>\
    <div class="login">
        <div class="login__content">
            <div class="login__img">
                <img src="imagens/img-login.svg" alt="">
            </div>

            <div class="login__forms">
                <form action="login.php" method="POST" class="login__registre">
                    <h1 class="login__title">Sign In</h1>

                    <div class="login__box">
                        <i class='bx bx-user login__icon'></i>
                        <input name="usuario" name="text" placeholder="Username" class="login__input">
                    </div>

                    <div class="login__box">
                        <i class='bx bx-lock-alt login__icon'></i>
                        <input name="senha" type="password" placeholder="Password" class="login__input">
                    </div>

                    <a href="#" class="login__forgot">Forgot password?</a>

                    <button class="login__button">Sign In</button>

                    <div>
                        <span class="login__account">Don't have an Account ?</span>
                        <a href="cadastro.php"><span class="login__signin" id="sign-up">Sign Up</span></a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>