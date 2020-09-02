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
  margin-top: 30px
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
  margin-top: -100px;


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
    if(isset($_POST['name']) & $_SERVER["REQUEST_METHOD"] == "POST"){
        $nameErr = $phoneErr = $genderErr = $websiteErr = $msgErr = "";
        $name = $phone = $gender = $comment = $website = $msg = "";


        if (empty($_POST["name"])) {
            $nameErr = "required";
        } else {
            $name = $_POST["name"];
        }

        if (empty($_POST["phone"])) {
            $phoneErr = "required";
        } else {
            $phone = $_POST["phone"];
        }

        if (empty($_POST["email"])) {
            $emailErr = "required";
        } else {
            $email = $_POST["email"];
        }
         if (empty($_POST["msg"])) {
            $msgErr = "required";
        } else {
            $msgErr = $_POST["msg"];
        }
    }
  
?>
</div>

<div class="center" class="form">
  <h1 class="contact">Contact us! </h1>
 <form method="post" action="<?php echo $_SERVER["PHP_SELF"];?>">
     <input type="text" id="name" name="name" placeholder="Name">
     <span class="error"> <?php if(isset($_POST["name"])) echo $nameErr;?></span>

    <input type="text" id="company" name="company" placeholder="Company">

    <input type="text" id="phone" name="phone" placeholder="Phone No">
     <span class="error"><?php if(isset($_POST["phone"])) echo "$phoneErr";?></span>

      <input type="text" id="email" name="email" placeholder="Email">
      <span class="error"><?php if(isset($_POST["email"])) echo "$emailErr";?></span>

       <input type="text" id="sub" name="sub" placeholder="Subject">
        <input type="text" id="msg" name="msg" placeholder="Meassage">
         <span class="error"><?php if(isset($_POST["msg"])) echo "$msgErr";?></span>

    </select>
  
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
