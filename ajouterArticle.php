

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
$price= $_POST["price"]; 
$titre1= $_POST["titre1"]; 
$titre2= $_POST["titre2"]; 
$description1= $_POST["description1"]; 
$description2= $_POST["description2"]; 
$description3= $_POST["description3"]; 
$description4= $_POST["description4"]; 
$categories= $_POST["categories"]; 
$stock= $_POST["stock"]; 
 $puissance= $_POST["puissance"]; 
$imgPath= $_POST["imgPath"]; 

$user = 'root';
$password = ''; //To be completed if you have set a password to root
$database = 'green_home'; //To be completed to connect to a database. The database must exist.
$port = NULL; //Default must be NULL to use default port
$mysqli  = new mysqli('127.0.0.1', $user, $password, $database, $port);

if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') '
            . $mysqli->connect_error);
}





$sql2 = "INSERT INTO 'item' ('id', 'price', 'description', 'description2', 'explications', 'explications2', 'explications3', 'explications4', 'img_path', 'categories', 'achat_en_cours', 'bought', 'stock', 'puissance') VALUES (NULL, '$price', '$titre1', '$titre2', '$description1', '$description2', '$description3', '$description4', '$imgPath', '$categories', '0', '0', '$stock', '$puissance')";
$result2 = $mysqli->query($sql2);



$mysqli->close();



?>
 <h4> 
L'article a été ajouté au site web.
 </h4> 
<p>

</body>
</html>