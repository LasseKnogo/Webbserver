<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webserverprogrammering";
$conn = new mysqli($servername, $username, $password, $dbname);

$sql = "SELECT * FROM users";
$result = $conn->query($sql);

$login_success = false;
$full_name = "";
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
		if($row["userId"] == $_POST["username"] &&
					$row["passwd"] == $_POST["password"]) {
			$login_success = true;
			$full_name = $row["firstname"] . " " .
					$row["lastname"];
                    echo "Welcome {$full_name}";
                    } 
	}
} else {
    echo "0 results";
}

if($login_success) {
	session_start();
	$_SESSION["username"] = $_POST["username"];
}
$conn->close();


?>