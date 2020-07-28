<!doctype html>
<html lang="en">
  <head>
    <title>My Movie</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">
    <style>
        * {font-family: 'Anton', sans-serif;}
        body {background-color: black;}
        div.scrollmenu {
            margin-top : 100px;
 
  overflow: auto;
  white-space: nowrap;
}
  </style> 
  </head>
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
<div class="scrollmenu">
<?php
    session_start();
    $connect = mysqli_connect("localhost","root","","doomovie");
    $sql = 'SELECT  movie.Picture,movie.name from transaction INNER JOIN movie ON transaction.ID_Movie=movie.ID_Movie WHERE ID_Account='.$_SESSION["id"].'';
    $result = mysqli_query($connect,$sql);
    $row = mysqli_fetch_array($result,MYSQLI_NUM);
    if($row[0]!=null){
    echo '<center>';
    echo '<table border="0" cellpading="0" cellspacing="0" width ="100%" style="margin-top:30px; " >';
    echo '<tr >';
    $sql = 'SELECT  movie.Picture,movie.name from transaction INNER JOIN movie ON transaction.ID_Movie=movie.ID_Movie WHERE ID_Account='.$_SESSION["id"].'';
    $result = mysqli_query($connect,$sql);
    while($row = mysqli_fetch_array($result,MYSQLI_NUM)){
        echo '<td>';
        echo '<center><image src="'.$row[0].'" alt="Submit" style="width :230px; height: auto;"><br><br><font size="2" color="orange">';
        echo  $row[1].'</a><br><br></td>';
    }
    echo '</tr>';
    echo '</table>'; 
  }else{
    echo '<center><img src="https://media.giphy.com/media/joNVQCtuecqHK/giphy.gif" alt="Smiley face" height="auto" width="500px style="margin-top:100px;">';
  }

?>
      </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>