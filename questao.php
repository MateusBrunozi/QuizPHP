<?php   
    require_once 'db.php'; 
    require_once 'session.php';

?>
<?php

$number = (int) $_GET['n'];

$query = "SELECT * FROM questoes";
        $results = $conexao->query($query) or die($conexao->error.__LINE__);
        $total = $results->num_rows;

//perguntas

$query = "SELECT * FROM questoes
            WHERE  numero_questao = $number ";

$resultado = $conexao->query($query) or die($conexao->error.__LINE__);



$questao = $resultado->fetch_assoc();


//respostas

$query = "SELECT * FROM escolhas
            WHERE  numero_questao = $number ";

$escolhas = $conexao->query($query) or die($conexao->error.__LINE__);

//reiniciar pontuação

$getNumber = $_GET['n'];

if($getNumber == 1){
    $_SESSION['score'] = 0;
}

?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8" />
        <title>Quiz empreendedor</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
    </head>
    <body>
        <header>
            <div class="container">
                <h1>QUIZ</h1>
            </div>
</header>
<main>
    <div class="container">
        <div class="current">questão <?php echo $questao['numero_questao']; ?> de <?php echo $total; ?></div>
        <p class="questao">
        <?php echo $questao['text'];?>
        </p>
        <form method="post" action="process.php">
            <ul class="escolhas">
                <?php while($row  = $escolhas->fetch_assoc()): ?>
                    <li><input name="escolha" type="radio" value="<?php echo $row['id'];?>"><?php echo $row['text'] ?></li>
                <?php endwhile; ?>
            </ul>
            <input type="submit" value="enviar" />
            <input type="hidden" name="number" value="<?php echo $number; ?>" />

</form>
</div>
</main>
<footer>
    <div class="container">
    Feito por Mateus Brunozi
    </div>
</footer>
</body>