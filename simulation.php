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
$taille= $_POST["taille"]; 
$user = 'root';
$password = ''; //To be completed if you have set a password to root
$database = 'green_home'; //To be completed to connect to a database. The database must exist.
$port = NULL; //Default must be NULL to use default port
$mysqli = new mysqli('127.0.0.1', $user, $password, $database, $port);

if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') '
            . $mysqli->connect_error);
}

if( $taille <=100){
$sql3 = "SELECT* FROM item WHERE puissance<='$taille'";
$result3 = $mysqli->query($sql3);
if ($result3->num_rows > 0) {
while($row = $result3->fetch_assoc()) {

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

else if($taille <=200 && $taille>100){
$sql3 = "SELECT* FROM item WHERE puissance<='200' && puissance>'100'";
$result3 = $mysqli->query($sql3);
if ($result3->num_rows > 0) {
while($row = $result3->fetch_assoc()) {

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

else if($taille <=300 && $taille>200){
$sql3 = "SELECT* FROM item WHERE puissance<='300' && puissance>'200'";
$result3 = $mysqli->query($sql3);
if ($result3->num_rows > 0) {
while($row = $result3->fetch_assoc()) {

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

else if($taille <=400 && $taille>300){
$sql3 = "SELECT* FROM item WHERE puissance<='400' && puissance>'300'";
$result3 = $mysqli->query($sql3);
if ($result3->num_rows > 0) {
while($row = $result3->fetch_assoc()) {

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

else if($taille <=500 && $taille>400){
$sql3 = "SELECT* FROM item WHERE puissance<='500' && puissance>'400'";
$result3 = $mysqli->query($sql3);
if ($result3->num_rows > 0) {
while($row = $result3->fetch_assoc()) {

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
else if($taille <=600 && $taille>500){
$sql3 = "SELECT* FROM item WHERE puissance<='600' && puissance>'500'";
$result3 = $mysqli->query($sql3);
if ($result3->num_rows > 0) {
while($row = $result3->fetch_assoc()) {

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
else if($taille <=700 && $taille>600){
$sql3 = "SELECT* FROM item WHERE puissance<='700' && puissance>'600'";
$result3 = $mysqli->query($sql3);
if ($result3->num_rows > 0) {
while($row = $result3->fetch_assoc()) {

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

else if( $taille >700){
$sql3 = "SELECT* FROM item WHERE puissance<='700'";
$result3 = $mysqli->query($sql3);
if ($result3->num_rows > 0) {
while($row = $result3->fetch_assoc()) {

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







?>
</body>
</html>


