<?php

if(!isset($_SESSION)) {
	session_start();
}
?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Treinos</title>
		<link
			href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap"
			rel="stylesheet"
		/>
		<link rel="stylesheet" href="css/style.css" />
	</head>
	<body>
		<?php 
            include 'header.php';
        ?>
		<main>
            
            <?php 
                if(empty($_SERVER["QUERY_STRING"])){
                    $path = "sobrenos.php";
                    include_once("$path");
                }else{
                    $pg = $_GET['pg'];
                    include_once("$pg.php");
                }
            ?>
		</main>
		<footer>

		</footer>
	</body>
</html>
