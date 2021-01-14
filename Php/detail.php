<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="..\style\biblioteque.css">
</head>
<body>
	
<?php require "config.php";?>
 <?php 
 $isbn = $_GET['isbn'];
 $link = mysqli_connect($HOST, $user, $password, $database);
 if(!$link){
	exit;
   }
if(!mysqli_set_charset($link,"utf8mb4")){
	printf(mysqli_error($link));
	exit();
}
$req = " SELECT * FROM livre JOIN editeur e ON e.id=livre.editeur JOIN auteur a ON a.idLivre=livre.isbn JOIN personne p ON p.id=livre.editeur WHERE isbn = '$isbn'";
$result = mysqli_query($link,$req);
if ($result) {
		while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
			echo "<a href='" . $CONFIG['root_path'] . "bibliotheque.php'><div><img src='" . $CONFIG['root_path'] . "img\Image1.jpg' id='logo'></a>";
			echo "<h1 class='Titre'><font color='white'>" . $row['titre'] . "</h1></div>";
			require "nav.php";
			echo "<ul>";
				echo "<div class='cali'>";
					echo "<div><img src='" . $CONFIG['root_path'] . "img/" . $row["isbn"] . ".jpg'  alt='' class='L'><div align='center'>";
						echo "<p class='pc'>Titre : " . $row["titre"] . "</p>";
			  			echo "<p class='pc'>Auteur : " . $row["prenom"] . " " . $row["nom"] . "</p>";
			    		echo "<p class='pc'>Editeur : " . $row["libelle"] . "</p>";
			    		echo "<p class='pc'>Date de parution: " . $row["annee"] . "</p>";
						echo "<p class='pc'>Isbn : " . $row["isbn"] . "</p>";
						echo "<p class='pc'>Nombre de page : " . $row["nbpages"] . "</p>";
						echo "<p class='pc'> " . $row["resume"] . "</p>";
					echo "</div></div>";
				echo "</div>";	
			echo "</ul>";
			echo "</div>";	
		}
		}
     ?>
</div>
</body>
</html>
