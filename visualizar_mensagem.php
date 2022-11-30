<?php
include 'connect.php';

if(!isset($_SESSION['admin'])) {
    header("Location: index.php");
}

$id = $_GET['id'];

$query = $mysqli->query("SELECT * FROM mensagens WHERE id='$id'");
$mensagem = $query->fetch_assoc();

?>

<link rel="stylesheet" href="css/mensagens.css">

<h1>Mensagem #<?php echo $id?></h1>
<div class="content">
    <div>
        <p>Nome: </p>
        <input type="text" class="nome" value="<?php echo $mensagem['nome'] ?>" disabled>
    </div>
    <div>
        <p>Email para contato: </p>
        <input type="text" class="email" value="<?php echo $mensagem['email'] ?>" disabled>
    </div>
    <div>
        <p>Sexo:</p>
        <input type="text" class="sexo" value="<?php if($mensagem['sexo'] == 'M') { echo 'Masculino';} else { echo 'Feminino'; } ?>" disabled>
    </div>
    <div>
        <p>Altura:</p>
        <input type="number" class="altura" value="<?php echo $mensagem['altura'] ?>" disabled>
    </div>
    <div>
        <p>Idade</p>
        <input type="number" class="idade" value="<?php echo $mensagem['idade'] ?>" disabled>
    </div>
    <div>
        <p>Mensagem:</p>
        <textarea cols="80" rows="7" disabled><?php echo $mensagem['comentario'] ?></textarea>
    </div>
</div>