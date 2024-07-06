<?php
$servername = "localhost";  // Replace with your MySQL server hostname
$username = "root";         // Replace with your MySQL username
$password = "";             // Replace with your MySQL password
$dbname = "kk_music"; // Replace with the name of your database

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

echo "success";

// Retrieve song index from the GET request
$songIndex = intval($_GET['index']);

// Prepare SQL statement to select filePath based on id
$sql = "SELECT filePath FROM songs WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param('i', $songIndex);
$stmt->execute();
$stmt->bind_result($filePath);
$stmt->fetch();

// Close statement and connection
$stmt->close();
$conn->close();

// Return the filePath as JSON response
echo json_encode(array("file_path" => $filePath));
?>
