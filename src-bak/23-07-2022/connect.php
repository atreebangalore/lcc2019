<?php
function cnx() {
	$host = "localhost";
	$database = "lcc2019";
	$uname = "root";
	$passwd = "inouman123";
	/*$connection=mysql_connect($host,$uname,$passwd)
	or die("Error ! Database Connection failed! <br>");
	$result=mysql_select_db($database)
	or die("Error ! Database could not be selected!");
	return $connection;*/
	try {
		$dbh = new PDO("mysql:host=$host;dbname=$database", $uname, $passwd);
		//echo 'Connected to database';
		return $dbh;
	}
	catch(PDOException $e){
		die($e->getMessage());
	}
}

function countRow($tbl_name, $con){
	$cnt = $con->exec($sql_stmt);
	return $cnt;
}

// user auth. functions
function auth_user($pa_user){
	$con=cnx();
	$sql=$con->prepare("select * from ngomst where ngo_id=?");
	$sql->execute(array($pa_user));
	if (!($row=$row	= $sql->fetch())){
	 	die("Access Denied...!!");
	}
	$sql->closeCursor();
	$con=NULL;
}
function test_input($data) {
  $data = trim($data);
  $data = strip_tags($data);
  $data = preg_replace('/[^A-Za-z0-9\-]/', ' ', $data);
  $data = preg_replace( "/\r|\n/", " ", $data );
  $data = stripslashes($data);
  $data = htmlspecialchars($data,ENT_QUOTES, 'UTF-8');  
  return $data;
}
?>