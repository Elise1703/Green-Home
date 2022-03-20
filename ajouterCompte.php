

<!DOCTYPE html >
<html>
<head>
<title>Green Home : Créez votre compte</title>
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
<form action = "ajouterCompte.php" method = "post">

<center><img src="Green Home.png" height = 100 px length = 100px></center>

<center>
<ul >
  <li><a href="homepage.html"><h4> Catégories</h4></a></li>
  <li><a href="simulation.html"><h4> Simulations</h4> </a></li>
  <li><a href="youraccount.html"><h4> Votre compte</h4></a></li>
<li><a href="admin.html"><h4> Administrateur</h4></a></li>
<a href="panier.php"><h4> <img src="panier.png" height = 50 px length = 50px></a>


</ul>
</center>
<hr>
<center>
<texte>
<h4> 
<?php 
/*
* Change the value of $password if you have set a password on the root userid
* Change NULL to port number to use DBMS other than the default using port 3306
*
*/
$username= $_POST["username"]; 
$password= $_POST["password"]; 
$email= $_POST["email"]; 
$firstName= $_POST["firstName"]; 
$lastName= $_POST["lastName"]; 
$adress= $_POST["adress"]; 
$city= $_POST["city"]; 
$postalCode= $_POST["postalCode"]; 
$country= $_POST["country"]; 
$phoneNumber= $_POST["phoneNumber"]; 
$card= $_POST["card"]; 
$cardNumber= $_POST["cardNumber"]; 
$cardExpDate= $_POST["cardExpDate"]; 
$cardCryptogram= $_POST["cardCryptogram"]; 
$user = 'root';
$password = ''; //To be completed if you have set a password to root
$database = 'green_home'; //To be completed to connect to a database. The database must exist.
$port = NULL; //Default must be NULL to use default port
$mysqli  = new mysqli('127.0.0.1', $user, $password, $database, $port);

if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') '
            . $mysqli->connect_error);
}




$sql2 = "INSERT INTO utilisateur(prenom, nom, pseudo, mdp, adresse, ville, code_postal, pays, numero_tel, email, carte, numero_carte, date_expiration_carte, cryptogram) VALUES('$firstName', '$lastName', '$username', '$password', '$adress', '$city', '$postalCode', '$country', '$phoneNumber', '$email', '$card', '$cardNumber', '$cardExpDate', '$cardCryptogram')";
$result2 = $mysqli->query($sql2);

$sql18 = "SELECT* FROM utilisateur WHERE pseudo = '$username'";
$result18 = $mysqli->query($sql18);
if ($result18->num_rows > 0) {
while($row = $result18->fetch_assoc()) {
$id_utilisateur = $row["id"];
}}

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
$mysqli->close();



?>
 <h4> 
Votre compte a été crée et votre commande est en cours. Vous receverez un mail lorsque celle ci sera prête.
 </h4> 
<p>

</body>
</html>