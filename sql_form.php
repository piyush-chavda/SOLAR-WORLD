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
<?php

$link = mysqli_connect("localhost", "root", "", "contactus");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
$phone = $name = $email = "";



$stmt=mysqli_prepare($link,"INSERT INTO contact(Name, Phone_no, Email_id) VALUES (?, ?, ?)");
mysqli_stmt_bind_param($stmt,"sss",$name,$phone,$email);
$name = $_POST['name'];
$email = $_POST['emailid'];
$phone = $_POST['phone'];
mysqli_stmt_execute($stmt);
// $getResult=mysqli_stmt_get_result($pst);
// Close connection
mysqli_close($link);
?>

<?php
       

   
   
   
       $phoneErr = $nameErr = $emailErr = $type_Err = $passErr = "";
       $phone = $name = $email = $type = $pass = "";
       $isError = false;
       if ($_SERVER["REQUEST_METHOD"] == "POST"){
           $email = $_POST["emailid"];
          //  $pass = $_POST["password"];
           $name = $_POST["name"];
           $phone = $_POST['phone'];


           if(!isset($_POST["type"])){
               $type_Err = "*A type must be selected"."<br>";
               $isError = true;
           }else{
              $type = $_POST["type"];
           }
          
           if(empty($name)) {
             $nameErr = "<br>"." name required";
             $isError = true;
           }

           if(empty($phone)) {
            $phoneErr = "<br>"." Phone number required";
            $isError = true;
          }

           if(empty($name)) {
            $nameErr = "<br>"." name required";
            $isError = true;
          }

           if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $emailErr = "<br>"."Invalid email format";
            $isError = true;
          }



           if(strlen($pass) <= 8){
               $passErr = $passErr."<br>"."Password length must be atleast 8 char";
               $isError = true;
           }
           if(!preg_match("#[0-9]+#",$pass)){
               $passErr = $passErr."<br>"."Password must contain atleast 1 number";
               $isError = true;
           }
           if(!preg_match("#[A-Z]+#",$pass)){
               $passErr = $passErr."<br>"."Password must contain atleast 1 uppercase";
               $isError = true;
           }
           if(!preg_match("#[a-z]+#",$pass)){
               $passErr = $passErr."<br>"."Password must contain atleast 1 lowercase";
               $isError = true;
           }
          
           if(!$isError){
               if(!isset($_COOKIE[$cookie_name])) {
                 echo "Cookie named '" . $cookie_name . "' is not set!";
               } else {
   //              echo "Cookie '" . $cookie_name . "' is set!<br>";
   //              echo "Value is: " . $_COOKIE[$cookie_name];
   //                $_COOKIE["email"] = $email;
   //                echo "Value is: " . $_COOKIE["email"];
                  
                   setcookie("emailid", $email, time() + (86400 * 30), "/");
                   setcookie("type", $type, time() + (86400 * 30), "/");
               }
               header("Location: http://localhost/Resilient/home.php");
           }
          
       }
      
      
      
       ?>
          
   <div class="center" class="form" id="Form">
         <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="POST" >
           <h4 class="contact" style="font-weight: bold;">CONTACT US</h4>
           
           <input type="text" name="name" placeholder="Enter your name " id="name" autocorrect="off"/>
             <span class="error" style="color: red">* <?php echo $nameErr;?></span>
           <br><br>

           <input type="text" name="phone" placeholder="Enter your phone no " id="phone" autocorrect="off"/>
             <span class="error" style="color: red">* <?php echo $phoneErr;?></span>
           <br><br>

           <input type="text" name="emailid" placeholder="Enter your email id" id="emailid" autocorrect="off" />
             <span class="error" style="color: red">* <?php echo $emailErr;?></span>
           <br><br>

           <input type="text" id="subject" name="subject" placeholder="Subject">
          <input type="text" id="message" name="message" placeholder="Meassage">
<!-- 
           <input type="password" name="password" placeholder="Enter a new password" id="pass" autocapitalize="none" autocorrect="off" style="border-color: #200122; padding:8px; border-radius: 10px;width:250px; " />
             <span class="error" style="color: red">* <?php echo $passErr;?></span>
           <br><br> -->
            
             <div id="type_box">
            
             <!-- <input type="radio" name="type" value="Student" id="type">&nbsp;Student<br>
             <input type="radio" name="type" value="Employer" id="type">&nbsp;Employer<br>
                 <span class="error" style="color: red"><?php echo $type_Err;?></span>
                 </div> -->
            
          
           <input type="submit" id="Button"  value="Register"/>
         </form>
         <br>
         <!-- <a href="#" id="back_to_login_link" style="text-decoration: none; color: black;">Already have an account?</a>
         <br><br> -->
        
        
         <!-- <a href="#" id="Button" role="button" style="text-decoration: none; ">Login</a>
       </div> -->
