<?php

if (isset($_POST['enviar'])) {

    include 'connect.php';

    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $idade = $_POST['idade'];
    $sexo = $_POST['sexo'];
    $altura = $_POST['altura'];
    $comentario = $_POST['comentario'];

    $sql_query = $mysqli->query("INSERT INTO mensagens (nome, email, idade, sexo, altura, comentario) VALUES ('$nome', '$email', '$idade', '$sexo', '$altura', '$comentario')");

    $sucesso = "Mensagem enviada com sucesso!";
}
?>


<link rel="stylesheet" href="css/listatreinos.css">
<link rel="stylesheet" href="css/faleconosco.css">
<div class="content">
    <h1>Solicite seu treino personalizado</h1>
    <div class="form">
        <form action="" method="post">
            <div class="input nome">
                <p>Nome:</p>
                <input type="text" name="nome" required>
            </div>
            <div class="input email">
                <p>Email para contato:</p>
                <input type="email" name="email" required>
            </div>
            <div class="input idade">
                <p>Idade:</p>
                <input type="number" name="idade" min="0" required>
            </div>
            <div class="input sexo">
                <p>Sexo:</p>
                <select name="sexo" id="">
                    <option value="M">Masculino</option>
                    <option value="F">Feminino</option>
                </select>
            </div>
            <div class="input altura">
                <p>Altura:</p>
                <input type="number" name="altura" min="0" max="252" step="1" placeholder="cm" required>
            </div>
            <div class="input comentario">
                <p>Comentario:</p>
                <textarea name="comentario" cols="50" rows="10" required></textarea>
            </div>
            <button name="enviar" value="1" class="btn-submit">Enviar</button>
            <span><?php if(isset($sucesso)) echo $sucesso ?></span>
        </form>
    </div>
</div>