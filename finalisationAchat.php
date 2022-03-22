<!DOCTYPE html >
<html>
<head>
<title>Green Home : Finalisation achats</title>
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

</style>
<script type="text/javascript">
</script>
</head>
<body>
<form action = "cart.php" method = "post" >


<center><img src="Green Home.png" height = 100 px length = 100px></center>

<center>
<ul >
  <li><a href="homepage.html"><h4> Catégories</h4></a></li>
  <li><a href="simulation.html"><h4> Simulations</h4> </a></li>
  <li><a href="youraccount.html"><h4> Votre compte</h4></a></li>
<li><a href="admin.html"><h4> Administrateur</h4></a></li>
<a href="panier.php"><h4> <img src="panier.png" height = 50 px length = 50px></a>


</ul >


<hr>
<center>
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

$sql3 = "SELECT* FROM utilisateur WHERE pseudo='$username' AND mdp='$passwordUser'";
$result3 = $mysqli->query($sql3);


if ($result3->num_rows > 0) {
while($row = $result3->fetch_assoc()) {


$id_utilisateur = $row["id"];
$pseudo = $row["pseudo"];
$mdp = $row["mdp"];
$prenom = $row["prenom"];


}
}

if( $username==$pseudo && $passwordUser==$mdp){

echo '<h4>'."Merci ".$prenom.". Votre achat est finalisé, vous receverez votre colis très bientôt.".'</h4>';
$sql19= "SELECT* FROM item WHERE achat_en_cours = 1";
$result19 = $mysqli->query($sql19);
if ($result19->num_rows > 0) {
while($row = $result19->fetch_assoc()) {

$id_item = $row["id"];
$stock = $row["stock"]-1;
$sql1 = "INSERT INTO achat_effectue(id_utilisateur, id_item) VALUES('$id_utilisateur', '$id_item')";
$result1 = $mysqli->query($sql1);
$sql20 = "UPDATE item SET achat_en_cours = '0' WHERE id = '$id_item'";
$result20 = $mysqli->query($sql20);
$sql21 = "UPDATE item SET stock = '$stock' WHERE id = '$id_item'";
$result21 = $mysqli->query($sql21);
}}
}
else {
echo '<h4>'."Le pseudonyme ou le mot de passe est incorrect.".'</h4>';
echo '<p>'.'<a href="connexion.html">'."Veuillez réessayer.".'</a>';
echo '<p>'.'<a href="pay.php">'."Ou créez un compte.".'</a>';
}

?>
</body>
</html>


