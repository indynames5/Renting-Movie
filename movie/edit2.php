<!doctype html>
<html lang="en">
  <head>
    <title>Home</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">
</head>
  <style>
        * {font-family: 'Anton', sans-serif;
            text-align:center;}
        body {background-color: black;}
        .font{
          margin-top:50px;
          margin-bottom:50px;
        }
  </style>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="home.php">Home</a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item ">
        <a class="nav-link" href="Mymovie.php">My Movie</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="profile.php">Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="transaction.php">Transaction</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Logout.php">Logout</a>
      </li>
    </ul>
  </div>
</nav>
<?php
session_start();
$resultForAlert="";
$check=validate($resultForAlert);
checkupdate($check,$resultForAlert);
function validate(&$resultForAlert){
	$resultForAlert="";
	$check=true;
	if(!preg_match("/^[A-Za-z]+(\s[A-Za-z]+)*$/",$_POST['fname'])){
		$resultForAlert.="Invalid Firstname \\n";
		$check=false;
	}
	if(!preg_match("/^[A-Za-z]+(\s[A-Za-z]+)*$/",$_POST['lname'])){
		$resultForAlert.="Invalid Lastname \\n";
		$check=false;
	}
	if(!preg_match("/^[A-Za-z0-9]+(\s[A-Za-z0-9]+)*$/",$_POST['username'])){
		$resultForAlert.="Invalid Username \\n";
		$check=false;
	}
	if(!preg_match("/^[A-Za-z0-9]+(\s[A-Za-z0-9]+)*$/",$_POST['pass'])){
		$resultForAlert.="Invalid Password \\n";
		$check=false;
	}
	if(!preg_match("/^[0-9]*$/",$_POST['tel'])){
		$resultForAlert.="Invalid Telephone \\n";
		$check=false;
	}
	if(!filter_var($_POST['email'],FILTER_VALIDATE_EMAIL)){
		$resultForAlert.="Invalid Email";
		$check=false;
	}
	return $check;
}
function checkupdate($check,&$resultForAlert){
	if($check==true){
		$connect = mysqli_connect("localhost","root","","doomovie");
		$sql = "update account set username='".$_POST['username']."',password='".$_POST['pass']."',firstname='".$_POST['fname']."',
		lastname='".$_POST['lname']."',tel='".$_POST['tel']."',email='".$_POST['email']."' where id=".$_SESSION["id"];
		$result = mysqli_query($connect,$sql);
		
        $_SESSION["username"] = $_POST["username"];
		$_SESSION["password"] = $_POST["pass"];
		$_SESSION["fname"] = $_POST["fname"];
		$_SESSION["lname"] = $_POST["lname"];
		$_SESSION["tel"] = $_POST["tel"];
		$_SESSION["email"] = $_POST["email"];
		
		$resultForAlert="Update Successful";
		header("Location: profile.php");
	}
	echo "<script>alert('$resultForAlert');location.href='edit1.php'</script>";
	//header("Location: edit1.php");
}
?>