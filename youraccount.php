<!DOCTYPE html >
<html>
<head>
<title>Green Home : Votre compte</title>
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
if( $username==$row["pseudo"] && $passwordUser==$row["mdp"]){


$id_utilisateur = $row["id"];
$pseudo = $row["pseudo"];
$mdp = $row["mdp"];
$prenom = $row["prenom"];
echo '<h4>'."Bonjour ".$prenom.". Nous esperons que votre expérience sur Green-Home s'est bien passée. Voici vos achats passés.".'</h4>';

$sql4 = "SELECT* FROM achat_effectue WHERE id_utilisateur='$id_utilisateur'";
$result4 = $mysqli->query($sql4);
if ($result4->num_rows > 0) {
while($row = $result4->fetch_assoc()) {
 $id_item = $row["id_item"];

$sql5 = "SELECT* FROM item WHERE id='$id_item'";
$result5 = $mysqli->query($sql5);
if ($result5->num_rows > 0) {
while($row = $result5->fetch_assoc()) {
 
echo '<center>';
 echo '<div class="rectangle">';
echo '<p>';
print '<img src="'.$row["img_path"].'" HEIGHT = 150 px 	WIDTH = 100 px />';
echo '<p>';
echo $row["description"];
echo '<p>';
echo '<h4>'.$row["price"]."€". '</h4>';
echo '<p>';





 
echo '</center>'.'</div>';
echo '<p>';

}
}

}
}

}

}
}


else {
echo '<h4>'."Le pseudonyme ou le mot de passe est incorrect.".'</h4>';
echo '<p>'.'<a href="youraccount.html">'."Veuillez réessayer.".'</a>';

}


?>
</body>
</html>


