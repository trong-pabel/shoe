<?php
    $server = "localhost";
    $user="root";
    $pass="";
    $database="shoe";
    $conn=mysqli_connect($server,$user,$pass,$database);
    mysqli_query($conn,'set names "utf8"');
    // Check connection
    if($conn === false){
        die("ERROR: Could not connect. " . mysqli_connect_error());
    }
?>