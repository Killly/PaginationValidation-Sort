<?php

$servername = "localhost";
$usernamebd = "root";
$password = "root";
$dbname = "basefortest";


$conn = mysqli_connect($servername,$usernamebd,$password,$dbname);

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
// echo "Connected Successfully.";
 

$username = trim($_POST['username']);
$email = trim($_POST['email']);
$mess = $_POST['mess'];

$sql = "INSERT INTO users (id, username, email, mess) VALUES
            (NULL, '$username', '$email', '$mess')";
if(mysqli_query($conn, $sql)){
    // echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
}
 
$sql1 = "SELECT * FROM 'users' ORDER BY 'id' DESC";
$query = $conn->query($sql1);
f(mysqli_query($conn, $sql1)){
    echo "Records selected successfully.";
} else{
    echo "ERROR: Could not able to execute $sql1. " . mysqli_error($conn);
}
// $select_items = "SELECT * FROM users ORDER BY id DESC";
// $result = $conn->query($select_items);
// if(mysqli_query($conn, $result)){
//     echo "Records selected successfully.";
// } else{
//     echo "ERROR: Could not able to execute $result. " . mysqli_error($conn);
// }

// if ($result->num_rows > 0) {
//   // output data of each row

//     while($row = $result->fetch_assoc()) {
//     echo "id: " . $row["id"]. " - Username: " . $row["username"]. " - Email " . $row["email"]. " - Message " . $row["mess"] . "<br>";

//     }
// } else {
//   echo "0 results";
// }


while($row = mysqli_fetch_assoc($query)) {
	$users['id'][] = $row['id'];
	$users['username'][] = $row['username'];
	$users['email'][] = $row['email'];
	$users['mess'][] = $row['mess'];
}


// $message = 'All is ok';
// else $message = 'Fail';


	$out = array(
		// 'message' => $message,
		'users' => $users
	);
header('Access-Control-Allow-Origin: *');
// 	// // header('Content-Type: text/json; charset=utf-8');
	echo json_encode($out);

// Close connection
$conn->close();

	


?>