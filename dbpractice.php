<?php


// Create connection
$conn = new mysqli("localhost","root","","contact_details");
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

echo"connected successfully";
$sql="INSERT INTO details(Name,Address)VALUES('Piyush','Mumbai')";
if(mysqli_multi_query($conn,$sql))
{
	echo "New records entered successfully!";
}
else
{
	echo "Error:".$sql.mysqli_error($conn);
}
	$sql = "SELECT Name,Address FROM deatails";
$result = mysqli_query($conn, $sql);


 if (mysqli_num_rows($result) > 0) {
  // output data of each row
  while($row = mysqli_fetch_assoc($result)) {
    echo "Name: " . $row["Name"]. " " . $row["Address"];
  }
} else {
  echo "0 results";
}


?>