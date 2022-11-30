<?php
include 'connect.php';

if(!isset($_SESSION['admin'])) {
    header("Location: index.php");
}

$id = $_GET['id'];
$info = $mysqli->query("SELECT * FROM treinos WHERE id='$id'")->fetch_assoc();

if (isset($_POST['alterar'])) {


    $nome = $_POST['nome_exercicio'];
    $descricao = $_POST['descricao'];
    $dificuldade = $_POST['dificuldade'];
    $ficha = $_POST['ficha'];
    $tipo = $_POST['tipo'];
    $qtd_series = $_POST['series'];
    $qtd_repeticoes = $_POST['repeticoes'];
    $descanso = $_POST['descanso'];

    $sql_query = $mysqli->query("UPDATE treinos  SET nome='$nome', descricao='$descricao', dificuldade='$dificuldade', ficha='$ficha', tipo='$tipo', qtd_series='$qtd_series', qtd_repeticoes='$qtd_repeticoes', descanso='$descanso' WHERE id='$id'");

    header("Location: ?pg=listartreinos&dificuldade=$dificuldade&ficha=$ficha");
}
?>


<link rel="stylesheet" href="css/listatreinos.css">
<link rel="stylesheet" href="css/faleconosco.css">
<div class="content">
    <h1>Cadastre um novo exercício</h1>
    <div class="form">
        <form action="" method="post">
            <div class="input nome">
                <p>Nome:</p>
                <input type="text" name="nome_exercicio" value="<?php echo $info['nome'] ?>" required>
            </div>
            <div class="input descricao">
                <p>Descrição:</p>
                <textarea name="descricao" cols="50" rows="10"><?php echo $info['descricao'] ?></textarea>
            </div>
            <div class="input dificuldade">
                <p>Dificuldade:</p>
                <select name="dificuldade">
                    <option value="1" <?php if($info['dificuldade'] == 1) echo 'selected' ?>>Iniciante</option>
                    <option value="2" <?php if($info['dificuldade'] == 2) echo 'selected' ?>>Intermediário</option>
                    <option value="3" <?php if($info['dificuldade'] == 3) echo 'selected' ?>>Avançado</option>
                </select>
            </div>
            <div class="input ficha">
                <p>Ficha:</p>
                <select name="ficha">
                    <option value="A" <?php if($info['ficha'] == 'A') echo 'selected' ?>>A</option>
                    <option value="B" <?php if($info['ficha'] == 'B') echo 'selected' ?>>B</option>
                    <option value="C" <?php if($info['ficha'] == 'C') echo 'selected' ?>>C</option>
                    <option value="D" <?php if($info['ficha'] == 'D') echo 'selected' ?>>D</option>
                    <option value="E" <?php if($info['ficha'] == 'E') echo 'selected' ?>>E</option>
                </select>
            </div>
            <div class="input tipo">
                <p>Tipo:</p>
                <select name="tipo">
                    <option value="Peito" <?php if($info['tipo'] == 'Peito') echo 'selected' ?>>Peito</option>
                    <option value="Costas" <?php if($info['tipo'] == 'Costas') echo 'selected' ?>>Costas</option>
                    <option value="Abdominal" <?php if($info['tipo'] == 'Abdominal') echo 'selected' ?>>Abdominal</option>
                    <option value="Pernas" <?php if($info['tipo'] == 'Pernas') echo 'selected' ?>>Pernas</option>
                    <option value="Coxa" <?php if($info['tipo'] == 'Coxa') echo 'selected' ?>>Coxa</option>
                    <option value="Panturrilha" <?php if($info['tipo'] == 'Panturrilha') echo 'selected' ?>>Panturrilha</option>
                    <option value="Biceps" <?php if($info['tipo'] == 'Biceps') echo 'selected' ?>>Bíceps</option>
                    <option value="Triceps" <?php if($info['tipo'] == 'Triceps') echo 'selected' ?>>Tríceps</option>
                    <option value="Ombro" <?php if($info['tipo'] == 'Ombro') echo 'selected' ?>>Ombro</option>
                    <option value="Trapezio" <?php if($info['tipo'] == 'Trapezio') echo 'selected' ?>>Trapézio</option>
                    <option value="Antebraço" <?php if($info['tipo'] == 'Antebraço') echo 'selected' ?>>Antebraço</option>
                </select>
            </div>
            <div class="input series">
                <p>Quantidade de séries:</p>
                <input type="number" min="0" name="series" value="<?php echo $info['qtd_series'] ?>" required>
            </div>
            <div class="input repeticoes">
                <p>Quantidade de repetições:</p>
                <input type="number" min="0" name="repeticoes" value="<?php echo $info['qtd_repeticoes'] ?>" required>
            </div>
            <div class="input descanso">
                <p>Tempo de descanso:</p>
                <input type="number" min="0" name="descanso" value="<?php echo $info['descanso'] ?>" required>
            </div>
            <button name="alterar" value="1" class="btn-submit">Alterar</button>
            <span><?php if(isset($sucesso)) echo $sucesso ?></span>
        </form>
    </div>
</div>