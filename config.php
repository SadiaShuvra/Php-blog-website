<?php
// Site Details
$sitename = "Code Helper"; 

// Database Details
$db_host = "sql309.infinityfree.com"; 
$db_user = "if0_41212682"; 
$db_pass = "yoXVKsJUy81X"; 
$db_name = "if0_41212682_assignment"; 

// Creating The Database 
$conn = new mysqli($db_host, $db_user, $db_pass, $db_name); 

// Check The Connection 
if ($conn->connect_error) { 
    echo "Database Connection Error " . $conn->connect_error; 
} else { 
    // Connection Success
}

// Function For Checking Session Of Admin Login 
function checksession() {
    if (!isset($_SESSION['admin'])) { 
        header('location:login.php'); 
        exit();
    }
}
?>