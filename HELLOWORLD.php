<html>
<?php

$n;
  $even_sum=0;
   $odd_sum=0;
$number=array(1,2,3,4,5,6,7,8,9);
function oddeven($n){
if($n%2==0)
{

	$even_sum=$even_sum+$n;
	echo"it is an even number<br>";
}
else
{
	$odd_sum=$odd_sum+$n;
	echo"it is an odd number<br>";

}
return $even_sum;
}
foreach ($number as $value) {
  oddeven($value);
}

echo $even_sum."<br>";
echo $odd_sum."<br>";
?>
</html>>