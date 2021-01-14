<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
      <link rel="stylesheet" href="..\style\bibliotequ.css">
</head>
<body>
    <form method="post" action="receive.php">
      <fieldset>
        <fieldset>
        	<legend>Informations sur le client</legend>
        	<label for="name">Nom :</label>
        	<input type="text" id="name" name="client_name" autofocus required><br>
          <br>
       	 	<label for="mail">Courriel :</label>
       		 <input type="email" id="mail" required name="client_mail"><br>
        </fieldset>
        <fieldset>
        <label for="duration">Votre livre préférée:</label>
        <select name="duration" required>
        	<option value="livre1">Percy Jackson:Le voleur de foudre</option>
        	<option value="livre2">Percy Jackson:La merdes monstres</option>
        	<option value="livre3">La mal&eacute;diction d'Oedipe</option>
          <option value="livre4">Achille,la naissance d'un h&eacute;ro</option>
          <option value="livre5">D&eacute;dale et Icare</option>
          <option value="livre6">Les 12 travaux d'Hercule</option>
          <option value="livre7">L'enl&egrave;vement de Pers&eacute;phone</option>
          <option value="livre8">Jason et la Toison d'or</option>
          <option value="livre9">L'Odyss&eacute;e</option>
          <option value="livre10">L'Illiade,la pomme de la discorde</option>
        </select><br>
        <label for="addreq">Vos avis</label><br>
        <textarea id="addreq"name="client_addreq" placeholder="Votre message"></textarea>
      </fieldset>

        <button type="reset">Tout effacer</button>
        <button type="submit">Valider</button>
      </fieldset>
    </form>

    </p>
</form>
</body>
</html>
