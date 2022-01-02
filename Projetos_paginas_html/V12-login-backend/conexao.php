<?php
define('HOST', '127.0.0.1');
define('USUARIO', 'root');
define('SENHA', 'Jjvictor2302');
define('DB', 'login');

$conexao = mysqli_connect(HOST, USUARIO, SENHA, DB) or die ('Não foi possivel conectar'); //se nao conseguir conectar ira aparecer um erro na tela