
<html>
<head>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
  <style>
    body {
      display: flex;
      min-height: 100vh;
      flex-direction: column;
    }

    main {
      flex: 1 0 auto;
    }

    body {
      background: #fff;
    }

    .input-field input[type=date]:focus+label,
    .input-field input[type=text]:focus+label,
    .input-field input[type=email]:focus+label,
    .input-field input[type=password]:focus+label {
      color: #e91e63;
    }

    .input-field input[type=date]:focus,
    .input-field input[type=text]:focus,
    .input-field input[type=email]:focus,
    .input-field input[type=password]:focus {
      border-bottom: 2px solid #e91e63;
      box-shadow: none;
    }
  </style>
</head>


<body > 
  <form action="login2.php" method="post" >
  <div class="section"></div>
  <main>
    <center>
      <img class="responsive-img" style="width: 250px;" src="https://previews.123rf.com/images/abluecup/abluecup1209/abluecup120901362/15431779-ロック、人々-はロックの思考の前に立って.jpg" />
      <div class="section"></div>

      <h5 class="indigo-text">Please, login to your account</h5>
      <div class="section"></div>

      <div class="container">
        <div class="z-depth-1 grey lighten-4 row"
          style="display: inline-block; padding: 32px 48px 0px 48px; border: 1px solid rgb(100, 31, 31);">

          <form class="col s12" method="post">
            <div class='row'>
              <div class='col s12'>
              </div>
            </div>

            <div class='row'>
              <div class='input-field col s12'>
                <input class='validate' type='text' name='username' id='username' />
                <label>Enter your ID</label>

              </div>
            </div>

            <div class='row'>
              <div class='input-field col s12'>
                <input class='validate' type='password' name='pass' id='pass' >
                <label >Enter your password</label>
                
              </div>

              <label style='float: left;'>
                <a class='pink-text' href='forgotpass1.php'><b>Forgot Password?</b></a>
              </label>
            </div>
          
            <center>
              <div class='row'>
             
                             
                <?php
                session_start();
                $connect = mysqli_connect("localhost","root","","doomovie");
                $sql = 'select*from account where username ="'.$_POST['username'].'" AND Password ="'.$_POST['pass'].'"';
                $result= mysqli_query($connect,$sql);
                $numrows =  mysqli_num_rows($result);
               

                if($numrows == 0){
                  echo  "<br><font color=red>Invalid Username or password.</font><br> ";
                  echo "<font color=red>Please check username or password.</font>" ;
                }else{
                  while($row = mysqli_fetch_array($result,MYSQLI_NUM)){

                    $_SESSION["id"] = $row[0];
                  $_SESSION["username"] = $row[1];
				  $_SESSION["password"] = $row[2];
				  $_SESSION["fname"] = $row[3];
				  $_SESSION["lname"] = $row[4];
				  $_SESSION["tel"] = $row[5];
				  $_SESSION["email"] = $row[6];
				  $_SESSION["money"] = $row[7];

                    echo "<br>Welcome : ".$_SESSION["username"];
                    $_SESSION["Page"]='all';
                    header("Location: home.php");
                  }}
                ?>
                   <br><br><button type='submit' name='btn_login' class='btn btn-large waves-effect waves-light'>Login</button>
                <br><br><hr>
                <a href="register1.php">Create account</a>

             
              </div>
            </center>
          </form>
        </div>
      </div>
     
    </center>

    <div class="section"></div>
    <div class="section"></div>
  </main>

  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.min.js"></script>
  <script type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>

</form>
</body>
</html>