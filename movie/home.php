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
        * {font-family: 'Anton', sans-serif;}
        body {background-color: black;}
        .my-custom-scrollbar {
position: relative;
height: 900px;
overflow: auto;
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
    <form class="form-inline my-2 my-lg-0" method="post" action="sethome.php">
      <?php
      $connect = mysqli_connect("localhost","root","","doomovie");
      $sql = 'SELECT DISTINCT type FROM `movie` ORDER BY `movie`.`Type` ASC';
      $result = mysqli_query($connect,$sql);
      if(!$result){
          echo mysqli_error().'<br>';
          die('Cannot not access database!');
      }else{
        
          echo '<select name="Type">';
          while($row = mysqli_fetch_array($result,MYSQLI_NUM)){
            echo '<option value="'.$row[0].'"> '.$row[0].'</option>';
          }
          echo '</select>';
        }
          ?>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Submit</button>
    </form>
  </div>
</nav>
  <?php
    session_start();
    
    if($_SESSION["username"]!=null){
    $connect = mysqli_connect("localhost","root","","doomovie");

    if($_SESSION["Page"]=='Action'){
      $sql = 'SELECT * FROM movie WHERE Type = "Action"  ORDER BY `movie`.`Year` DESC';
    }elseif($_SESSION["Page"]=='Animation'){
      $sql = 'SELECT * FROM movie WHERE Type = "Animation"  ORDER BY `movie`.`Year` DESC';
    }elseif($_SESSION["Page"]=='Horror'){
      $sql = 'SELECT * FROM movie WHERE Type = "Horror"  ORDER BY `movie`.`Year` DESC';
    }elseif($_SESSION["Page"]=='Sci-Fi'){
      $sql = 'SELECT * FROM movie WHERE Type = "Sci-Fi"  ORDER BY `movie`.`Year` DESC';
    }elseif($_SESSION["Page"]=='all') {
      $sql = 'SELECT * FROM movie ORDER BY `movie`.`Year` DESC';
    }

    $result = mysqli_query($connect,$sql);
    if(!$result){
        echo mysqli_error().'<br>';
        die('Cannot not access database!');
    }else{
        if($_SESSION["Page"]=='all'){
        $i=0;
        while($row = mysqli_fetch_array($result,MYSQLI_NUM)){
            $picture[$i]=$row[6];
            $name[$i]=$row[1];
            $id[$i]=$row[0];
            $i++;
        }
    echo '<table border="0" cellpading="0" cellspacing="0" width ="100%" style="margin-top:30px;" >';
    $number=0;
        for($row=1;$row<=16;$row++){
        echo '<tr >';
            for($columm=1;$columm<=5;$columm++){
                echo '<td>';
                echo '<form method="post" action="page.php">';
                echo '<input type="hidden" name="ID_Movie" value="'.$id[$number].'">';
                echo '<input type="hidden" name="name" value="'.$name[$number].'">';
                echo '<center><input type="image" src="'.$picture[$number].'" alt="Submit" style="width :230px; height: auto;"><br><br><font size="2" color="orange">';
                echo  $name[$number].'</a><br><br></td>';
                echo '</form>';
                $number++;
            }echo '</tr>';
        }echo '</table>';   
    }
    else{
      $i=0;
      while($row = mysqli_fetch_array($result,MYSQLI_NUM)){
          $picture[$i]=$row[6];
          $name[$i]=$row[1];
          $id[$i]=$row[0];
          $i++;
      }
  echo '<table border="0" cellpading="0" cellspacing="0" width ="100%" style="margin-top:30px;" >';
  $number=0;
      for($row=1;$row<=4;$row++){
      echo '<tr >';
          for($columm=1;$columm<=5;$columm++){
            if($name[$number]!=null){
              echo '<td>';
              echo '<form method="post" action="page.php">';
              echo '<input type="hidden" name="ID_Movie" value="'.$id[$number].'">';
              echo '<input type="hidden" name="name" value="'.$name[$number].'">';
              echo '<center><input type="image" src="'.$picture[$number].'" alt="Submit" style="width :230px; height: auto;"><br><br><font size="2" color="orange">';
              echo  $name[$number].'</a><br><br></td>';
              echo '</form>';
              $number++;
            }
          }echo '</tr>';
      }echo '</table>';   

    }
  }
    $_SESSION["Page"]='all';
    mysqli_close($connect);
  }else{
		header("Location: login1.php");
	}
    ?>      
  
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>

