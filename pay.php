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
<h4>Entrez les informations suivantes pour procéder au paiement.</h4>

<?php
/*
* Change the value of $password if you have set a password on the root userid
* Change NULL to port number to use DBMS other than the default using port 3306
*
*/


$user = 'root';
$password = ''; //To be completed if you have set a password to root
$database = 'green_home'; //To be completed to connect to a database. The database must exist.
$port = NULL; //Default must be NULL to use default port
$mysqli = new mysqli('127.0.0.1', $user, $password, $database, $port);

if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') '
            . $mysqli->connect_error);
}




$total = 0;
$sql18 = "SELECT* FROM item WHERE achat_en_cours = 1";
$result18 = $mysqli->query($sql18);
if ($result18->num_rows > 0) {
 while($row = $result18->fetch_assoc()) {
$id_item = $row["id"];
$img_path = $row["img_path"];
$description = $row["description"];
$price =$row["price"];
$description2 =$row["description2"];
$explications =$row["explications"];
$explications2 =$row["explications2"];
$explications3 =$row["explications3"];
$explications4 =$row["explications4"];
$categories =$row["categories"];
$bought =$row["bought"];

 

$total=$total+$row["price"];




 
echo '</center>'.'</div>';
echo '<p>';

}}

echo '<p>';
echo '<label for="username">'."Identifiant :".'</label>'.'<input type="text" id ="username" name="username" />'.'<br />'.'<p>';
echo '<label for="password">'."Mot de passe :".'</label>'.'<input type="text" id ="password" name="password" />'.'<br />'.'<p>';
echo '<label for="email">'."Email :".'</label>'.'<input type="text" id ="email" name="email" />'.'<br />'.'<p>';
echo '<label for="firstName">'."Prénom :".'</label>'.'<input type="text" id ="firstName" name="firstName" />'.'<br />'.'<p>';
echo '<label for="lastName">'."Nom :".'</label>'.'<input type="text" id ="lastName" name="lastName" />'.'<br />'.'<p>';
echo '<label for="adress">'."Adresse :".'</label>'.'<input type="text" id ="adress" name="adress" />'.'<br />'.'<p>';
echo '<label for="city">'."Ville :".'</label>'.'<input type="text" id ="city" name="city" />'.'<br />'.'<p>';
echo '<label for="postalCode">'."Code postal :".'</label>'.'<input type="text" id ="postalCode" name="postalCode" />'.'<br />'.'<p>';
echo '<label for="country">'."Pays :".'</label>'.'<input type="text" id ="country" name="country" />'.'<br />'.'<p>';
echo '<label for="phoneNumber">'."Numéro de téléphone :".'</label>'.'<input type="text" id ="phoneNumber" name="phoneNumber" />'.'<br />'.'<p>';
echo '<h4>'."Carte bleue :". '</h4>'.'<p>';
echo '<input type = "radio" name = "card" value = "Visa" checked = "checked" >';
          echo "Visa". '<br>';
        echo '<input type = "radio" name = "card" value = "Mastercard">';
          echo "Mastercard". '<br>';
echo '<input type = "radio" name = "card" value = "Paypal">';
          echo "Paypal".'<br>'.'<p>';

echo '<label for="cardNumber">'."Numéro de carte bleue :".'</label>'.'<input type="text" id="cardNumber" name="cardNumber" />'.'<br />'.'<p>';
echo '<label for="cardExpDate">'."Date d'expiration :".'</label>'.'<input type="text" id="cardExpDate" name="cardExpDate" />'.'<br />'.'<p>';
echo '<label for="cardCryptogram">'."Cryptograme :".'</label>'.'<input type="text" id="cardCryptogram" name="cardCryptogram" />'.'<br />'.'<p>';
echo "La somme totale est :".$total." €.";
echo '<p>';
echo '<input type = "submit" value = "Créer son compte et payer maintenant">';

$mysqli->close();
?>

</body>
</html>