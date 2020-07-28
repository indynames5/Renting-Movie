<html>

<head>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
  <style>

  </style>
</head>
<body > 
  <form action="login1.php" method="post" >

<?php
                session_start();
                $connect = mysqli_connect("localhost","root","","doomovie");
                $sql = 'select*from account where email ="'.$_POST['fname'].'" AND tel ="'.$_POST['tel'].'" AND username = "'.$_POST['username'].'"';
                $result= mysqli_query($connect,$sql);
                $numrows =  mysqli_num_rows($result);
               

                if($numrows == 0){
                  echo  "<br><font color=red>Invalid Input.</font><br> ";
                  echo "<font color=red>Please check Username , Email or phone number.</font>" ;
                }else{
                  while($row = mysqli_fetch_array($result,MYSQLI_NUM)){

                  $_SESSION["email"] = $row[6];
                  $_SESSION["tel"] = $row[5];
                  $_SESSION["pass"] = $row[2];

                  if($_SESSION["email"] ==$row[6] &&  $_SESSION["tel"] == $row[5])
                    echo "<br>Your password : ".$_SESSION["pass"];
                     // header("Location: home.php");
                  }
                
                }
                ?>



                   <br><br><button type='submit' name='btn_login' class='waves-effect waves-light btn-small'>Go to Login page </button>
                <br><br><hr>
                <a href="forgotpass1.php">Back</a>



 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.min.js"></script>
  <script type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
    </body>

</form>
 </html>