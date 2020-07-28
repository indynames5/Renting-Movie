<?php
    session_start();
    if($_SESSION["money"]>=$_SESSION["Price"]){

        $Period = $_POST['Period'];
        $expired=strtotime("+$Period day");
        if($Period==5){
            $_SESSION["Price"]=$_SESSION["Price"]+3;
        }elseif($Period==6){
            $_SESSION["Price"]=$_SESSION["Price"]+4;
        }elseif($Period==7){
            $_SESSION["Price"]=$_SESSION["Price"]+5;
         }
        $Price=$_SESSION["Price"];
        $_SESSION["money"]=$_SESSION["money"]-$_SESSION["Price"];

        $connect = mysqli_connect("localhost","root","","doomovie");
		$sql = 'insert into transaction values("","'.$_SESSION["ID_Movie"].'","'.$_SESSION["id"].'","'.date("Y-m-d ").'","'.date("Y-m-d ", $expired).'","'.$Price.'")';
        $result = mysqli_query($connect,$sql);
        
		$sql = 'UPDATE account set money ='.$_SESSION["money"].' WHERE id ="'.$_SESSION["id"].'" ';
        $result = mysqli_query($connect,$sql);
        echo "<script>alert('Success');location.href='home.php'</script>";

    }else{
        echo "<script>alert('Money Not Enough');location.href='home.php'</script>";
    }


?>