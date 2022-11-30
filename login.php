<?php

include 'connect.php';

if (isset($_POST['logar'])) {


    $email = $_POST['email'];
    $senha = $_POST['senha'];

    $sql_query = $mysqli->query("SELECT * FROM usuarios WHERE email='$email' AND senha='$senha'");
    $quantidade = $sql_query->num_rows;
    if($quantidade == 1) {

        $usuario = $sql_query->fetch_assoc();

        if(!isset($_SESSION)){
            session_start();
        }
        $_SESSION['admin'] = $usuario['id'];

        header("Location: index.php");

    } else {
        $erro = "Login ou senha inválida";
    }
}
?>


<link rel="stylesheet" href="css/listatreinos.css">
<link rel="stylesheet" href="css/faleconosco.css">
<div class="content">
    <h1>Login</h1>
    <div class="form login">
        <form action="" method="post">
            <div class="input email">
                <p>Email:</p>
                <input type="email" name="email" required>
            </div>
            <div class="input senha">
                <p>Senha:</p>
                <input type="password" name="senha" required>
            </div>
            
            <button name="logar" value="1" class="btn-submit">Enviar</button>
            <span class="erro"><?php if(isset($erro)) echo $erro ?></span>
        </form>
    </div>
</div>