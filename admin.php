<!DOCTYPE html >
<html>
<head>
<title>Green Home : Administrateur</title>
<meta charset="utf-8">
<style type="text/css">
body{
font-family : Arial;
}



ul {
    list-style-type: none;
    margin: 0;
    padding: 20;
    overflow: hidden;
    background-color: white;

font-family : Arial;
}

li {
   float : left;
 
}

li a {

    display: block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
margin: 0 60px;
}

/* Change the link color to #111 (black) on hover */
li a:hover {

    background-color: pink;
}

.wrapper {
  display: grid;
  grid-template-columns: 1fr 1fr;
}

.rectangle{
	width:200px;
	height:320px;
	border color : grey ; border-style : solid ; border-width : 1px;
}

label
{
	display: block;
	width: 150px;
	float: left;
}

</style>
<script type="text/javascript">
</script>
</head>
<body>
<form action = "ajouterArticle.php" method = "post">


<center><img src="Green Home.png" height = 100 px length = 100px></center>

<center>
<ul >
  <li><a href="homepage.html"><h4> Catégories</h4></a></li>
  <li><a href="simulation.html"><h4> Simulations</h4> </a></li>
  <li><a href="youraccount.html"><h4> Votre compte</h4></a></li>
<li><a href="admin.html"><h4> Administrateur</h4></a></li>
<a href="panier.php"><h4> <img src="panier.png" height = 50 px length = 50px></a>


</ul >
</center>

<hr>

<?php
$username= $_POST["username"]; 
$passwordUser= $_POST["password"]; 
$user = 'root';
$password = ''; //To be completed if you have set a password to root
$database = 'green_home'; //To be completed to connect to a database. The database must exist.
$port = NULL; //Default must be NULL to use default port
$mysqli = new mysqli('127.0.0.1', $user, $password, $database, $port);

if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') '
            . $mysqli->connect_error);
}

$sql3 = "SELECT* FROM admin WHERE username='$username' AND password='$passwordUser'";
$result3 = $mysqli->query($sql3);





if ($result3->num_rows > 0) {
while($row = $result3->fetch_assoc()) {
if( $username==$row["username"] && $passwordUser==$row["password"]){


$id_utilisateur = $row["id"];
$pseudo = $row["username"];
$mdp = $row["password"];
$prenom = $row["firstname"];
echo '<h4>'."Bonjour ".$prenom.".".'</h4>';

echo'<h4>'. "Ajoutez un article :". '</h4>'.'<p>';


echo '<label for="price">'."Prix:".'</label>'.'<input type="text" id="price" name="price" />'.'<br />'.'<p>';

echo '<label for="titre1">'."Titre de l'annonce :".'</label>'.'<input type="text" id="titre1" name="titre1" />'.'<br />'.'<p>';

echo '<label for="titre2">'."Titre détaillé :".'</label>'.'<input type="text" id="titre2" name="titre2" />'.'<br />'.'<p>';

echo '<label for="description1">'."Caractéristiques 1 :".'</label>'.'<input type="text" id="description1" name="description1" />'.'<br />'.'<p>';

echo '<label for="description2">'."Caractéristiques 2 :".'</label>'.'<input type="text" id="description2" name="description2" />'.'<br />'.'<p>';

echo '<label for="description3">'."Caractéristiques 3 :".'</label>'.'<input type="text" id="description3" name="description3" />'.'<br />'.'<p>';

echo '<label for="description4">'."Caractéristiques 4 :".'</label>'.'<input type="text" id="description4" name="description4" />'.'<br />'.'<p>';

echo '<label for="imgPath">'."Lien de l'image :".'</label>'.'<input type="text" id="imgPath" name="imgPath" />'.'<br />'.'<p>';

echo '<h4>'."Type de produit :". '</h4>'.'<p>';

echo'<input type = "radio" name = "categories" value = "Eolienne" checked = "checked" >';
          echo "Eolienne ".'<br>';
        echo '<input type = "radio" name = "categories" value = "Panneau">'; 
          echo "Panneaux solaire ".'<br>'.'<p>';

echo '<label for="stock">'."Nombre d'article en stock :".'</label>'.'<input type="text" id="stock" name="stock" />'.'<br />'.'<p>';

echo '<label for="puissance">'."Puissance (en W) :".'</label>'.'<input type="text" id="puissance" name="puissance" />'.'<br />'.'<p>';

echo '<input type = "submit" value = "Ajouter">';


}

}
}

else {
echo '<h4>'."Le pseudonyme ou le mot de passe est incorrect.".'</h4>';
echo '<p>'.'<a href="admin.html">'."Veuillez réessayer.".'</a>';

}


?>
</body>
</html>


