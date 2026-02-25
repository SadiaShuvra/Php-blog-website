<?php
// Site Details
$sitename = "Code Helper"; 

// Database Details
$db_host = "127.0.0.1";//sql309.infinityfree.com"; 
$db_user = "root";//"if0_41212682"; 
$db_pass ="" ;//"yoXVKsJUy81X"; 
$db_name ="blog";// "if0_41212682_assignment"; 

// Creating The Database 
$conn = new mysqli($db_host, $db_user, $db_pass, $db_name); 

// Check The Connection 
if ($conn->connect_error) { 
    echo "Database Connection Error " . $conn->connect_error; 
} else { 
    // Connection Success
}

function checksession() {
    if (!isset($_SESSION['admin'])) { 
        header('location:login.php'); 
        exit();
    }
}
?>