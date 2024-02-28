<?php   
    require_once 'db.php'; 
    require_once 'session.php';

?>

<?php

$query = "SELECT * FROM questoes";

$results = $conexao->query($query) or die($conexao->error.__LINE__);
$total = $results->num_rows;
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
        <h2>Quiz do empreendedor</h2>
        <p>Teste seus conhecimentos de empreendedorismo</p>
        <ul>
            <li><strong>Questões: </strong><?php echo $total;?></li>
        </ul>
        <a href="questao.php?n=1" class="start"> começar </a>

</div>
</main>
<footer>
    <div class="container">
        Feito por Mateus Brunozi
    </div>
</footer>
</body>
</html>
