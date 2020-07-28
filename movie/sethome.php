<?php
    session_start();
    $_SESSION["Page"]= $_POST['Type'];
		header("Location: Home.php");
?>