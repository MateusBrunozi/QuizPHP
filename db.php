<?php
$conexao = mysqli_connect("localhost", "root", "", "quiz");


if($conexao->connect_error){
    printf("Falha na conexao: %s\n", $conexao->connect_error);
    exit();
}
?>