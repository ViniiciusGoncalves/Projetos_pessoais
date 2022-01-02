<?php
session_start();
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sistema de Cadastro - PHP + MySQL</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
    <div class="login">
        <div class="login__content">
            <div class="login__img">
                <img src="imagens/img-login.svg" alt="">
            </div>

            <div class="login__forms">
                <form action="cadastrar.php" method="POST" class="login__registre">
                    <h1 class="login__title">Create Account</h1>

                    <div class="login__box">
                        <i class='bx bx-user login__icon'></i>
                        <input name="usuario" name="text" placeholder="Username" class="login__input">
                    </div>

                    <div class="login__box">
                        <i class='bx bx-lock-alt login__icon'></i>
                        <input name="senha" type="password" placeholder="Password" class="login__input">
                    </div>


                    <button class="login__button">Sign Up</button>

                    <div>
                        <span class="login__account">Already have an Account ?</span>
                        <a href="index.php"><span class="login__signin" id="sign-up">Sign In</span></a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>