<?php  

session_start();
if(!isset($_SESSION['username'])){
	header('location:login.php');
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>
	</title>
</head>
<body>

	<a href="Logout.php">Logout</a>
	<h1>Welcome <?php echo $_SESSION['username']; ?></h1>
</body>
</html>