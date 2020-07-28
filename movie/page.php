<!doctype html>
<html lang="en">
  <head>
    <?php
        echo '<title>'.$_POST['name'].'</title>';
    ?>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">
    
</head>
  <style>
        * {font-family: 'Anton', sans-serif;
            text-align:center;}
        .info{
            font-size: 5px;
            text-align: justify;
            text-justify: inter-word;
            margin-top:80px;
            padding: 25px;
        }
        img {
            width: 100%;
            height: auto;
        }
        .price{
            font-size: 80px;
            text-align: center;
            padding: 50px;
        }
        body {background-color: black;}
        .box {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.box select {
  background-color: #FF8000;
  color: white;
  padding: 12px;
  width: 250px;
  border: none;
  font-size: 20px;
  box-shadow: 0 5px 25px rgba(0, 0, 0, 0.2);
  -webkit-appearance: button;
  appearance: button;
  outline: none;
  
}

.box::before {
  font-family:FontAwesome;
  content: "\f107";
  position: absolute;
  top: 0;
  right: 0;
  width: 20%;
  height: 100%;
  text-align: center;
  font-size: 28px;
  line-height: 45px;
  color: rgba(255, 255, 255, 0.5);
  background-color: rgba(255, 255, 255, 0.1);
  pointer-events: none;
}

.box:hover::before {
  color: rgba(255, 255, 255, 0.6);
  background-color: rgba(255, 255, 255, 0.2);
}

.box select option {
  padding: 30px;
}
    </style>
    <body>
    <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="home.php">Home</a>
    </nav>
    <form action="insertT.php" method="post" >
    <?php
    session_start();
    $connect = mysqli_connect("localhost","root","","doomovie");
    $sql = 'SELECT * FROM `movie` WHERE ID_Movie = "'.$_POST['ID_Movie'].'";';
    $result = mysqli_query($connect,$sql);
    while($row = mysqli_fetch_array($result,MYSQLI_NUM)){
        echo '<div class="row">';
        echo '<div class="col-2"></div>';
        echo '<div class="col-3 ">';
        echo '<center><img src="'.$row[6].'" style="width :300px; height: auto; margin-top:80px; margin-bot:20px;">';
        echo '</div>';

        echo '<div class="column col-5">';
            echo '<div class="price">';
                echo '<font size="20" color="orange">price </font><font color="red">'.$row[3].'</font>';
                $_SESSION["Price"]=$row[3];
                $_SESSION["ID_Movie"]=$_POST['ID_Movie'];
            echo '</div>';
            echo '<div class="box">';
            
                echo '<select name="Period">';
                    for($columm=3;$columm<=7;$columm++){
                        echo '<option value="'.$columm.'"> '.$columm.' DAY';
                        if($columm==3) echo '  +0 Bath  </option>';
                        elseif($columm==4) echo '  +0 Bath  </option>';
                        elseif($columm==5) echo '  +3 Bath  </option>';
                        elseif($columm==6) echo '  +4 Bath  </option>';
                        elseif($columm==7) echo '  +5 Bath  </option>';    
                    }
                echo '</select>';
            echo '</div>';
            
        echo '<div>';
        echo '<button type="submit" class="btn btn-primary btn-lg btn-danger" style="margin-top:100px;"> Submit </button>';
        
        echo '</div>';
        echo '</div>';
        echo '</div>';

        echo '<div class="row">';
            echo '<div class="col-2 "></div>';
            echo '<div class="col-8 info border border-warning rounded">';
            echo '<center><font size="5" color="orange">'.$row[5];
            echo '<center></div>';
            echo '<div class="col-2 ></div>';
        echo '</div>';
    }
    ?>
    </form>
 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>