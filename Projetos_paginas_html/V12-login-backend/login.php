<?php
session_start();
include('conexao.php'); //Pegando a instancia da minha conexão

if(empty($_POST['usuario']) || empty($_POST['senha'])) { //Se o usuario nao digitar nada no formulario ele vai continuar na "index.php"
    header('Location: index.php');
    exit();
}

$usuario = mysqli_real_escape_string($conexao, $_POST['usuario']); //Criando a variavel 'usuario'
$senha = mysqli_real_escape_string($conexao, $_POST['senha']); //Criando a variavel 'senha'

$query = "select usuario_id, usuario from usuario where usuario = '{$usuario}' and senha = md5('${senha}')"; //validando se o usuario do meu banco é o mesmo que o do meu codigo

$result = mysqli_query($conexao, $query); //Query sendo executada no banco de dados

$row = mysqli_num_rows($result);

// echo $row;exit;
if($row == 1) { // Se o usuario for autenticado
    $_SESSION['usuario'] = $usuario;
    header('Location: painel.php');
    exit();
} else { // Se o usuario nao for autenticado
    $_SESSION['nao_autenticado'] = true;
    header('Location: index.php');
    exit();
}
