<!DOCTYPE html>
<html>
<style>
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
.validation
{
  color: red;
}
h1
{
  color: #5499C7;
}
</style>
<body>

<div class="validation">
  <?php

$nameErr = $phoneErr = $genderErr = $websiteErr = "";
$name = $phone = $gender = $comment = $website = "";


  if (empty($_POST["name"])) {
    $nameErr = "required";
  } else {
    $name = test_input($_POST["name"]);
  }

  if (empty($_POST["phone"])) {
    $phoneErr = "required";
  } else {
    $phone = test_input($_POST["phone"]);
  }

  if (empty($_POST["email"])) {
    $emailErr = "required";
  } else {
    $email = test_input($_POST["email"]);
  }

  
?>
</div>

<div class="center" class="form">
  <h1 class="contact">Contact us! </h1>
 <form method="post" action="<?php echo htmlspecialchars($_SERVER[PHP_SELF])?>">
     <input type="text" id="name" name="name" placeholder="Name">
     <span class="error"> <?php if(isset($_POST["name"])) echo $nameErr;?></span>
    <input type="text" id="company" name="company" placeholder="Company">
     <input type="text" id="lname" name="lastname" placeholder="Phone No">
     <span class="error">* <?php echo $phoneErr;?></span>
      <input type="text" id="lname" name="lastname" placeholder="Email">
      <span class="error">* <?php echo $emailErr;?></span>
       <input type="text" id="lname" name="lastname" placeholder="Subject">
        <input type="text" id="lname" name="lastname" placeholder="Meassage">

    </select>
  
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>