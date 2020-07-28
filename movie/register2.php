
<html>
      <img class="responsive-img" style="width: 250px;" src="https://previews.123rf.com/images/coramax/coramax1212/coramax121200179/16933239-3-d-の人々-人、金色の鍵を持つ人.jpg"><br><br><hr>
</html>
<head>
<link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">
    
</head>
<style>
        * {font-family: 'Anton', sans-serif;}
        
  </style>
<?php
session_start();

$check=valid();
update($check);
function valid(){
	$check=true;
	if(!preg_match("/^[A-Za-z]+(\s[A-Za-z]+)*$/",$_POST['fname'])){
		echo  "<br><font color=red>Invalid Firstname</font><br>";
		$check=false;
    }
	if(!preg_match("/^[A-Za-z]+(\s[A-Za-z]+)*$/",$_POST['lname'])){
		echo  "<br><font color=red>Invalid Lastname</font><br>";
		$check=false;
    }
	if(!preg_match("/^[A-Za-z0-9]+(\s[A-Za-z0-9]+)*$/",$_POST['username'])){
		echo  "<br><font color=red>Invalid Username</font><br>";
		$check=false;
    }
	if(!preg_match("/^[A-Za-z0-9]+(\s[A-Za-z0-9]+)*$/",$_POST['pass'])){
		echo  "<br><font color=red>Invalid Password</font><br>";
		$check=false;
	}
	if(!preg_match("/^[0-9]*$/",$_POST['tel'])){
		echo  "<br><font color=red>Invalid Telephone</font><br>";
		$check=false;
    }
	if(!filter_var($_POST['email'],FILTER_VALIDATE_EMAIL)){
		echo  "<br><font color=red>Invalid Email</font><br>";
		$check=false;
    }
	return $check;
}


function update($check){
	if($check==true){//validate
		$connect = mysqli_connect("localhost","root","","doomovie");
		$sql = "insert into account (ID,Username,Password,FirstName,LastName,Tel,Email,Money) values('','".$_POST['username']."',
		'".$_POST['pass']."','".$_POST['fname']."','".$_POST['lname']."','".$_POST['tel']."','".$_POST['email']."',200)";
		$sql2 = "select username from account";
		$result2 = mysqli_query($connect,$sql2);
		$checkid = true;
		if(($_POST['pass']==$_POST['conpass'])){//พาสไม่ตรงกัน
			while($row = mysqli_fetch_array($result2,MYSQLI_NUM)){
				//echo $row[0]."<br>";
				if($_POST['username']==$row[0]){
					$checkid=false;	
				}
			}
			if($checkid==true){//id ซ้ำ
					$result = mysqli_query($connect,$sql);//บรรทัดนี้คือ insert
				
					echo "--- Register Success ---<br>";
					echo "Your Firstname: ".$_POST['fname']."<br>";
					echo "Your Lastname: ".$_POST['lname']."<br>";
					echo "Your Username: ".$_POST['username']."<br>";
					echo "Your Password: ".$_POST['pass']."<br>";
					echo "Your Telephone: ".$_POST['tel']."<br>";
					echo "Your Email: ".$_POST['email']."<br>";
					echo "<form methd='post' action='login1.php'><input type='submit' value='Back to Login'></input></form>";
			}else{
				echo "--- Register Failed ---<br>";
				echo "This Username is already register";
				echo "<form methd='post' action='register1.php'><input type='submit' value='Back'></input></form>";
			}
		}else{
			echo "--- Register Failed ---<br>";
			echo "Password mismatch<br>";
			echo "<form methd='post' action='register1.php'><input type='submit' value='Back'></input></form>";
		}
		mysqli_close($connect);	
	}else{
		echo "<form methd='post' action='register1.php'><input type='submit' value='Back'></input></form>";
	}
}
?>