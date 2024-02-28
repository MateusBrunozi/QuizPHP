<?php   
    require_once 'db.php'; 
    require_once 'session.php';
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
    <h2>Parabéns você terminou</h2>
        <p>Pontuação:<?php echo $_SESSION['score']; ?> </p>
        <a href="questao.php?n=1" class="start"> Tente novamente</a> 
</div>
</main>
<footer>
    <div class="container">
        Feito por Mateus Brunozi
    </div>
</footer>
</body>