<!DOCTYPE html >
<html>
<head>
<title>Green Home : Eoliennes</title>
<meta charset="utf-8">
<style type="text/css">
body{
font-family : Arial;
}

texte{
color: grey;
}

ol {
    list-style-type: none;
    margin: 0;
    padding: 20;
    overflow: hidden;
    background-color: white;

font-family : Arial;
}

lu {
   float : left;
 
}

lu a {

    display: block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
margin: 0 60px;
}

/* Change the link color to #111 (black) on hover */
lu a:hover {

    background-color: pink;
}

.wrapper {
  display: grid;
  grid-template-columns: 1fr 1fr;

}

.rectangle{
	width:200px;
	height:400px;
	border color : grey ; border-style : solid ; border-width : 1px;
}
#nav { 
font-weight:bold;        
font-size: 1.2em;  
height: 850px;    width: 150px;    float: left;    line-height: 30px;    padding: 5px;    
 
} 

#nav2 { 
font-weight:bold;        
font-size: 1.2em;  
height: 850px;    width: 150px;    float: right;    line-height: 30px;    padding: 5px;     
} 

</style>
<script type="text/javascript">



</script>
</head>
<body>



<center><img src="Green Home.png" height = 100 px length = 100px></center>

<center>
<ol >
  <lu><a href="homepage.html"><h4> Catégories</h4></a></lu>
  <lu><a href="buying.html"><h4> Simulations</h4> </a></lu>
  <lu><a href="youraccount.html"><h4> Votre compte</h4></a></lu>
<lu><a href="admin.html"><h4> Administrateur</h4></a></lu>
<a href="identifyCart.html"><h4> <img src="panier.png" height = 50 px length = 50px></a>


</ol>
</center>
<hr>
<h4>Eoliennes</h4>
<?php

$id2= $_GET["id"]; 

$user = 'root';
$password = ''; //To be completed if you have set a password to root
$database = 'green_home'; //To be completed to connect to a database. The database must exist.
$port = NULL; //Default must be NULL to use default port
$mysqli = new mysqli('127.0.0.1', $user, $password, $database, $port);

if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') '
            . $mysqli->connect_error);
}

$sql = "SELECT* FROM item WHERE id='$id2'";
$result = $mysqli->query($sql);





 if ($result->num_rows > 0) {
 while($row = $result->fetch_assoc()) {
 $id = $row["id"];
$img_path = $row["img_path"];
$description = $row["description"];
$price =$row["price"];
$description2 =$row["description2"];
$explications =$row["explications"];



echo '<div class="wrapper">';
echo '<div>'.'<center>';
 echo '<div class="rectangle">';
echo '<p>';
print '<img src="'.$row["img_path"].'" HEIGHT = 150 px 	WIDTH = 100 px />';
echo '<p>';
echo '<input type = "radio" name = "description" value = "'.$description.'" checked = "checked" >';
echo $description.'<br>'.'<p>';
echo '<h4>'.$row["price"]." £". '</h4>';
echo '</div>';
echo '</center>'.'</div>';
echo '<div>'.'<center>';
echo '<h4>'.$row["description2"]. '</h4>';
echo '<hr>';
echo '<ul>';
echo '<li>'.$row["explications"].'</li>';
echo '<p>';
echo '<li>'.$row["explications2"].'</li>';
echo '<p>';
echo '<li>'.$row["explications3"].'</li>';
echo '<p>';
echo '<li>'.$row["explications4"].'</li>';
echo '</ul>';
echo '<p>';

echo'<input type = "submit" value = "Acheter" >';
echo '</center>'.'</div>'; 

}}
$mysqli->close();
?>

<p>


</div>
</body>
</html>