<?php

if(!isset($_SESSION['admin'])) {
    header("Location: index.php");
}

$dificuldade = $_GET['dificuldade'];
$ficha = $_GET['ficha'];


if (isset($_POST['enviar'])) {

    include 'connect.php';

    $nome = $_POST['nome_exercicio'];
    $descricao = $_POST['descricao'];
    $tipo = $_POST['tipo'];
    $qtd_series = $_POST['series'];
    $qtd_repeticoes = $_POST['repeticoes'];
    $descanso = $_POST['descanso'];

    $sql_query = $mysqli->query("INSERT INTO treinos (nome, descricao, dificuldade, ficha, tipo, qtd_series, qtd_repeticoes, descanso) VALUES ('$nome', '$descricao', '$dificuldade', '$ficha', '$tipo', '$qtd_series', '$qtd_repeticoes', '$descanso')");

    header("Location: ?pg=listartreinos&dificuldade=$dificuldade&ficha=$ficha");
}
?>


<link rel="stylesheet" href="css/listatreinos.css">
<link rel="stylesheet" href="css/faleconosco.css">
<div class="content">
    <h1>Cadastre um novo exercício</h1>
    <h2>Ficha <?php echo $ficha ?></h2>
    <div class="form">
        <form action="" method="post">
            <div class="input nome">
                <p>Nome:</p>
                <input type="text" name="nome_exercicio" required>
            </div>
            <div class="input descricao">
                <p>Descrição:</p>
                <textarea name="descricao" cols="50" rows="10"></textarea>
            </div>
            <div class="input tipo">
                <p>Tipo:</p>
                <select name="tipo">
                    <option value="Peito">Peito</option>
                    <option value="Costas">Costas</option>
                    <option value="Abdominal">Abdominal</option>
                    <option value="Pernas">Pernas</option>
                    <option value="Coxa">Coxa</option>
                    <option value="Panturrilha">Panturrilha</option>
                    <option value="Biceps">Bíceps</option>
                    <option value="Triceps">Tríceps</option>
                    <option value="Ombro">Ombro</option>
                    <option value="Trapezio">Trapézio</option>
                    <option value="Antebraço">Antebraço</option>
                </select>
            </div>
            <div class="input series">
                <p>Quantidade de séries:</p>
                <input type="number" min="0" name="series">
            </div>
            <div class="input repeticoes">
                <p>Quantidade de repetições:</p>
                <input type="number" min="0" name="repeticoes">
            </div>
            <div class="input descanso">
                <p>Tempo de descanso:</p>
                <input type="number" min="0" name="descanso">
            </div>
            <button name="enviar" value="1" class="btn-submit">Enviar</button>
            <span><?php if(isset($sucesso)) echo $sucesso ?></span>
        </form>
    </div>
</div>