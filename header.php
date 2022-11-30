<link rel="stylesheet" href="css/header.css">

<header>
    <h1 class="logo">
        <a href="index.php">Odin<span>Workout</span></a>
    </h1>
    <nav>
        <ul class="nav_links">
            <li><a href="?pg=sobrenos">Sobre nós</a></li>
            <li><a href="?pg=treinos">Treinos</a></li>
            <li><a href="?pg=faleconosco">Fale Conosco</a></li>
        </ul>
    </nav>
    <?php if (isset($_SESSION['admin'])) { ?>
        <ul class="nav_links">
            <li><a href="logout.php">Logout</a></li>
            <li><a href="?pg=gerenciar_mensagens">Mensagens</a></li>
        </ul>
    <?php } else { ?>
        <a href="?pg=login">Login</a>
    <?php } ?>
</header>