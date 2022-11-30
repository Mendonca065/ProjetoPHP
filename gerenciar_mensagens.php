<?php
include 'connect.php';

if(!isset($_SESSION['admin'])) {
    header("Location: index.php");
}

$sql_query = $mysqli->query("SELECT * FROM mensagens");
$quantidade = $sql_query->num_rows;

?>

<link rel="stylesheet" href="css/mensagens.css">

<h1>Mensagens</h1>
<div class="content">
    <table class="content-table">
        <thead>
        <tr>
            <th>Nome</th>
            <th>E-mail</th>
            <th>Breve descrição</th>
            <th>Ações</th>
        </tr>
        </thead>
        <tbody>
        <?php
            if($quantidade == 0) { ?>
            <tr>
                <td colspan="4">Nenhuma enviada.</td>
            </tr>
        <?php } else {
    
            while ($mensagem = $sql_query->fetch_assoc()) {
                ?>
                <tr>
                    <td><a href="#" class="nome_usuario"><?php echo $mensagem['nome']; ?></a></td>
                    <td><?php echo $mensagem['email']; ?></td>
                    <td><?php echo substr($mensagem['comentario'], 0, 60); ?></td>
                    <td><a href="index.php?pg=visualizar_mensagem&id=<?php echo $mensagem['id']; ?>">visualizar</a> | <a href="index.php?pg=apagar_mensagem&id=<?php echo $mensagem['id']; ?>">deletar</a></td>
                </tr>
                <?php
            }
        } ?>
        </tbody>
    </table>
</div>