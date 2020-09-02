<?php
$num=array();
$num[0]=$_POST['num1']; 
$num[1]=$_POST['num2']; 
$num[2]=$_POST['num3']; 
$num[3]=$_POST['num4']; 
$num[4]=$_POST['num5']; 
$n;
function oddeven($n){
if($n%2==0)
{

	
	echo"it is an even number<br>";
}
else
{

	echo"it is an odd number<br>";

}

}

foreach ($num as $value) {
  oddeven($value);
}

?>