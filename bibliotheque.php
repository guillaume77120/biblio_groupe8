<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<title>biblioteque</title>
	<link rel="stylesheet" href="style\biblioteque.css">
</head>
<body>
<header>
	<?php require "php/config.php"; ?>
	<div align="center"><h1>L’encyclop&eacute;die de l’Olympe</h1>
	<a href="<?php echo $CONFIG['root_path'] ?>bibliotheque.php"><img id="logo"src="img\Image1.jpg" alt=""></a></div>
	<br><br>
	<div class='alo'></div><div class='ok'></div>
</header>
<?php require "php/nav.php"; ?>
<div class='gril'>
    <?php
    $link = mysqli_connect($HOST , $user, $password, $database);
    if(!$link){
    exit;
   }
if(!mysqli_set_charset($link,"utf8mb4")){
	printf(mysqli_error($link));
	exit();
}
$req = " SELECT * FROM livre JOIN editeur e ON e.id=livre.editeur JOIN auteur a ON a.idLivre=livre.isbn JOIN personne p ON p.id=livre.editeur;";
$result = mysqli_query($link,$req);
	if ($result) {
		while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
			   		echo "<ul>";
			  			 echo "<div class='ca'>";
			  			 	echo "<a href='" . $CONFIG['root_path'] . "php/detail.php?isbn=" . $row['isbn'] . "'><div><img src='img/" . $row["isbn"] . ".jpg'   class='img'alt=''></a><div align='center'>";
			  			 		echo "<p class='pc'>Titre : " . $row["titre"] . "</p>";
			  			 		echo "<p class='pc'>Auteur : " . $row["prenom"] . " " . $row["nom"] . "</p>";
			    				echo "<p class='pc'>Editeur : " . $row["libelle"] . "</p>";
			    				echo "<p class='pc'>Date de parution: " . $row["annee"] . "</p>";
								echo "<p class='pc'>Isbn : " . $row["isbn"] . "</p>";
							echo "</div></div>";
						echo "</div>";
					echo "</ul>";
			}
	}
?>
</div>
</body>
</html>
