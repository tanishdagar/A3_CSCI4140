<?php

// acutal quantity of the product in 
$item_acutal_quantty = $_POST['quan'];

if ($item_acutal_quantty >= 1) {
	$host = "";
	$database = "";
	$user = "";
	$pass = "";

	$conn = mysqli_connect($host, $user, $pass, $database) or die("Uable to connect with the DB " . mysqli_error($conn));

	//product id
	$data = $_POST['dataname'];

	// acutal quantity of the product in 
	$user_count = $_POST['user_selected_item'];

	//total price in the cart
	$totalprice = $_POST['totalprice'];

	$payment = $totalprice * ($user_count+1);

	$client_ID = $_POST['clientID'];

	$sql = "INSERT INTO userSelected133(id, Dataid, Totalprice, clientID133) VALUES (NULL, '$data','$payment', '$client_ID')";

	if ($conn->query($sql) === TRUE) {
	}

	$totalQuantity = $item_acutal_quantty  - 1;


	$updateSql = "UPDATE Parts133 SET QoH133 = '$totalQuantity' WHERE Parts133 . partNo133 = $data";

	if ($conn->query($updateSql) === TRUE) {
	}

	$conn->close();
}
else{
	echo "Reached Quantity :)";
}

?>