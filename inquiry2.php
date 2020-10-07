<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		select:required:invalid {
  color: gray;
}
option[value=""][disabled] {
  display: none;
}
option {
  color: black;
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid  #5499C7;
  border-radius: 50px;
  box-sizing: border-box;
 
}
.center {
  margin: auto;
  width: 30%;
  padding: 50px;
  margin-top: 60px
}

input[type=submit] {
  width: 20%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 13px 0;
  border: none;
  border-radius: 50px;
  cursor: pointer;
   
    align-content: center;
       text-align: center;
}

input[type=submit]:hover {
  background-color: #45a049;
}

 .form {
  border-radius: 20px;
  background-color: #5499C7;
 padding-bottom: 50px
  width: 600px;
  height: 400px;
  margin-top: -20px;


}
.contact
{
  padding-bottom: -20px;

  margin-top: -20px;
  color: #5499C7;
}
h1
{
  color: #5499C7;
}
	</style>
	
</head>
<body>


<div class="center" class="form">
	 <h1 class="contact">Inquiry </h1>
<form method="post" action="<?php echo htmlspecialchars($_SERVER[PHP_SELF])?>">
  
  <input type="text" id="bill" name="bill" placeholder="Average Monthly Electricity Bill (Rs)">
   <input type="text" id="area" name="area" placeholder="Roof Area (sq.ft.)">

  <select id="type" name="type" >
  	 <option value="" disabled selected>Electricity Connection Type</option>
    <option value="1">Residential</option>
    <option value="2">Commercial</option>
    <option value="3">Housing Society</option>
  </select>
  <input type="text" id="pin" name="pin" placeholder="Pincode">
  <input type="submit">
</form>
</div>
</body>
</html>
