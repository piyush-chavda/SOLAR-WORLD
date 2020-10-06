<?php
$cookie_name = "user";
$cookie_value = "John Doe";
setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); // 86400 = 1 day
?>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
   
<style>
body{
        background-image:url("https://media.gettyimages.com/photos/abstract-blurred-office-interior-room-blurry-working-space-with-use-picture-id1019217082?b=1&k=6&m=1019217082&s=612x612&w=0&h=OL2CzvqBfdXPVlws7fTrMf0gNAZ_oRKaEBIjOXm998Y=");
        background-size:cover;
        background-repeat: no-repeat;
        background-position: center;
        font-family:Arial;
      }
#Form{
        margin-left:76%;
        margin-right: 5%;
        margin-top: 6%;
        display: block;
        border: solid #200122 1px ;
        text-align: center;
        padding-top: 35px;
        padding-bottom: 55px;
        background-color: white;
        border-radius:20px;
        width:350px;
        background-color:#FAF0E6;
        margin: 110px auto;
        margin-left:620px;
      }

      #Button{
        border: solid #200122 1px;
        border-radius: 18px;
        padding: 5px;
        padding-left: 15px;
        padding-right: 20px;
        color: white;
        background-image: linear-gradient(to right ,#200122,#6f0000);
      }

      #Button a:link{
        text-decoration: none;
        display: block;
      }
      #Button:hover{
        color: greenyellow;
      }
    #main_heading{
        font-family: "Sofia";
        font-size: 25px;
        font-weight: bold;
    }
    #type_box{
        border-style: solid;
        border-radius:10px;
        width: 250px;
        margin-left: 50px;
        margin-bottom: 20px;
    }


</style>
<title>Register</title>
</head>

<body>
   
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#" id="main_heading">Resilient</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">About us</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search for internships" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
   
   
   
    <center>
       
    <?php
       

   
   
   
    $emailErr = $type_Err = $passErr = "";
    $email = $type = $pass = "";
    $isError = false;
    if ($_SERVER["REQUEST_METHOD"] == "POST"){
        $email = $_POST["emailid"];
        $pass = $_POST["password"];
        if(!isset($_POST["type"])){
            $type_Err = "*A type must be selected"."<br>";
            $isError = true;
        }else{
           $type = $_POST["type"];
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
       
<div id="Form">
      <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="POST" >
        <h4 style="font-weight: bold;">REGISTER</h4>
        <h6 >Create a new Resilience Account</h6>
        <input type="text" name="emailid" placeholder="Enter your email id" id="emailid" autocorrect="off" style="border-color: #200122; padding:8px;border-radius: 10px;width:250px;" />
          <span class="error" style="color: red">* <?php echo $emailErr;?></span>
        <br><br>
         
        <input type="password" name="password" placeholder="Enter a new password" id="pass" autocapitalize="none" autocorrect="off" style="border-color: #200122; padding:8px; border-radius: 10px;width:250px; " />
          <span class="error" style="color: red">* <?php echo $passErr;?></span>
        <br><br>
         
          <div id="type_box">
         
          <input type="radio" name="type" value="Student" id="type">&nbsp;Student<br>
          <input type="radio" name="type" value="Employer" id="type">&nbsp;Employer<br>
              <span class="error" style="color: red"><?php echo $type_Err;?></span>
              </div>
         
       
        <input type="submit" id="Button"  value="Register"/>
      </form>
      <br>
      <a href="#" id="back_to_login_link" style="text-decoration: none; color: black;">Already have an account?</a>
      <br><br>
     
     
      <a href="#" id="Button" role="button" style="text-decoration: none; ">Login</a>
    </div>
    </center>