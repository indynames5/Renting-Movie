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
<script language='JavaScript'>
function confirmDelete(){
	return confirm('Are you sure want to delete this account?');
}
</script>
<?php
	session_start();
  echo "<form method='post' action='edit1.php'>";
  echo "<font size = '5px' color='orange' >";
  echo '<div class="font">';
	echo "Username : ".$_SESSION["username"]."<br>";
	echo "Password : ".$_SESSION["password"]."<br>";
	echo "Firstname : ".$_SESSION["fname"]."<br>";
	echo "Lastname : ".$_SESSION["lname"]."<br>";
	echo "Telephone : ".$_SESSION["tel"]."<br>";
	echo "Email : ".$_SESSION["email"]."<br>";
  echo "Money : ".$_SESSION["money"]."<br>";
  echo '</div>';
  echo '</font>';
  echo "<input type='submit' value='Edit'></input>";
	echo "</form>";
	echo "<form method='post' action='delete.php'>";
	echo "<input type='submit' value='Delete' onClick='return confirmDelete();'>";
	echo "</form>";
?>