<?php
require_once 'db.php';
require_once 'session.php';
?>
<?php
    if(!isset($_SESSION['score'])){
        $_SESSION['score'] = 0;
    }

    if($_POST){
        $number = $_POST['number'];
        $resp_selecionada = $_POST['escolha'];
        $prox = $number+1;
        
        //verificar numero de questoes
       
        $query = "SELECT * FROM questoes";
        $results = $conexao->query($query) or die($conexao->error.__LINE__);
        $total = $results->num_rows;

        //verificar correta e atribuir ponto

        $query = "SELECT * FROM escolhas
                    WHERE numero_questao = $number AND correta = 1";

        $result = $conexao->query($query) or die($conexao->error.__LINE__);

        $row = $result->fetch_assoc();

        $resp_correta = $row['id'];

        if($resp_correta == $resp_selecionada){
            $_SESSION['score']++;


        }

        //prox pergunta

        if($number == $total){
            header("Location: final.php");
            exit();
        }else{
            header("Location: questao.php?n=".$prox);
        }
    }
?>