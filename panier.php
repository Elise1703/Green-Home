<!DOCTYPE html >
<html>
<head>
<title>Green Home : Panier</title>
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
  <li><a href="buying.html"><h4> Simulations</h4> </a></li>
  <li><a href="youraccount.html"><h4> Votre compte</h4></a></li>
<li><a href="admin.html"><h4> Administrateur</h4></a></li>
<a href="panier.php"><h4> <img src="panier.png" height = 50 px length = 50px></a>


</ul>
</center>
<hr>
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

 
echo '<center>';
 echo '<div class="rectangle">';
echo '<p>';
print '<img src="'.$row["img_path"].'" HEIGHT = 150 px 	WIDTH = 100 px />';
echo '<p>';
echo $row["description"];
echo '<p>';
echo '<h4>'.$row["price"]."€". '</h4>';
echo '<p>';
$total=$total+$row["price"];




 
echo '</center>'.'</div>';
echo '<p>';

}}
echo '<center>';
echo "The total sum is :".$total." €.";
echo '<p>';
echo '<p>'.'<input type = "submit" value = "Procéder au paiement">';
echo '</center>';
$mysqli->close();
?>

</body>
</html>