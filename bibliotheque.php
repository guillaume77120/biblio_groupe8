<!DOCTYPE html>
<html=lang="fr">
<head>
	<meta charset="utf-8">
	<title> biblioteque</title>
	<link rel="stylesheet" href="style\biblioteque.css">
</head>
<body>
<header>
	<div align="center"><h1>L’encyclop&eacute;die de l’Olympe</h1>
	<a href="/cours/biblio_groupe8-etape3/biblio_groupe8-master/bibliotheque.php"><img id="logo"src="img\Image1.jpg" alt=""></a></div>
	<br><br>
	<div class='alo'></div><div class='ok'></div>
		<?php 
		require "php/nav.php" 
		?>
	<article><font color="white"> <div align="center">Nos livres </div> </font></article>
	 		</div>
			<br><br>
		
</header>
 		<style>
 			article {
	background:#181818;
	padding:10px;
	border-radius:10px;
	box-shadow:0px 0px 3px #181818;
	width :70%;
	margin:auto;

}</style>
<div class='gril'>
    <?php

    $link = mysqli_connect("localhost", "root", "", "bibliotheque");
    if(!$link){
    	  //  echo "Erreur : Impossible de se connecter à MySQL." . PHP_EOL;
   // echo "Errno de débogage : " . mysqli_connect_errno() . PHP_EOL;
    //cho "Erreur de débogage : " . mysqli_connect_error() . PHP_EOL;
    exit;
   }
//echo "Succès : Une connexion correcte à MySQL a été faite! La base de donnée my_db est géniale." . PHP_EOL;
//echo "Information d'hôte : " . mysqli_get_host_info($link) . PHP_EOL;
$req = " SELECT * FROM livre JOIN editeur e ON e.id=livre.editeur JOIN auteur a ON a.idLivre=livre.isbn JOIN personne p ON p.id=livre.editeur";// requete sql 
$result = mysqli_query($link,$req);

	if ($result) {
		//echo "SELECT a retourné ".mysqli_num_rows($result)."lignes.<br>";
		while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){

			   
			   		echo "<ul>";
			  			 echo "<div class='ca'>";
			  			 	echo "	<a href='php/" . $row["isbn"] . ".php'><div><img src='img/" . $row["isbn"] . ".jpg'   class='img'alt='' ></a><div align='center'>"; 
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
// isbn titre editeur  auteur  date 
     ?>
     </div>

</body></html>