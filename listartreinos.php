<?php
include 'connect.php';

$dificuldade = $_GET['dificuldade'];
$ficha = $_GET['ficha'];


$sql = "SELECT * FROM treinos WHERE dificuldade='$dificuldade' AND ficha='$ficha'";
$query = $mysqli->query($sql);

/*while($treino = $query->fetch_assoc()) {
    echo $treino['nome'] . "<br>";
}*/
?>

<link rel="stylesheet" href="css/listatreinos.css">

<h1>Treino <?php echo $ficha ?> detalhado:</h1>
<?php if(isset($_SESSION['admin'])) { ?><span><a style="color: goldenrod; margin-left: 40px;" href="?pg=cadastrar_exercicio&dificuldade=<?php echo $dificuldade ?>&ficha=<?php echo $ficha ?>">Adicionar exercício</a></span><?php } ?>

<div class="treinos">
    <?php $contador = 0;
    while($ficha = $query->fetch_assoc()) {
        $contador++; ?>
    <div class="treino">
        <h2><?php echo $contador . " - " . $ficha['nome'] ?> | <span><?php echo $ficha['qtd_series'] . " Séries de " . $ficha['qtd_repeticoes'] . " repetições com " . $ficha['descanso'] . "s de descanso";?></span></h3>
        <?php if(isset($_SESSION['admin'])) { ?>
         <h5 style="margin-left: 43px;"><a style="color: darkcyan;" href="?pg=editar_exercicio&id=<?php echo $ficha['id'] ?>">Editar</a> - <a style="color: crimson;" href="?pg=apagar_exercicio&id=<?php echo $ficha['id'] ?>">Apagar</a></h5>
        <?php } ?>
        <p><?php echo $ficha['descricao']?></p>
    </div>
    <?php } ?>
</div>