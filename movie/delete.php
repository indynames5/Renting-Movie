<?php
session_start();
$connect = mysqli_connect("localhost","root","","doomovie");
$sql = "delete from account where id=".$_SESSION["id"];
$result = mysqli_query($connect,$sql);
echo "<script>alert('Delete Success');location.href='login1.php'</script>";
?>