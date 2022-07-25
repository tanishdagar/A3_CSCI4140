<?php

$host = "";
$database = "";
$user = "";
$pass = "";

$conn = mysqli_connect($host, $user, $pass, $database) or die("Uable to connect with the DB " . mysqli_error($conn));

$client_ID = $_POST['clientID'];

date_default_timezone_set('Halifax');
$date = date('Y-m-d H-i-s');

$sql = "INSERT INTO POsZ (poNoZ, datePOZ, statusZ, clientIDZ) VALUES (NULL, '$date','pending','$client_ID')";

$insert_id_posNO = 0;

if ($conn->query($sql) === TRUE) {
	$insert_id_posNO += mysqli_insert_id($conn);
}

$data_checkout = $_POST['datacheckout'];

$user_selected = $_POST['user_selected'];

for ($i=0; $i < sizeof($data_checkout); $i++) { 
	$countX = 0;
	$countY = 0;
	$tprice = 0;
	for ($j=0; $j < sizeof($user_selected); $j++) { 
		if ($data_checkout[$i]['partNoY'] != NULL && $data_checkout[$i]['partNoY'] != "undefined") {
			if (($data_checkout[$i]['partNoY']."Y") === $user_selected[$j]['dataIDZ'] && $client_ID === $user_selected[$j]['clientIDZ']) {
				$countY++;
			}
		}
		if ($data_checkout[$i]['partNo133'] != NULL && $data_checkout[$i]['partNo133'] != "undefined") {
			if (($data_checkout[$i]['partNo133']."X") === $user_selected[$j]['dataIDZ'] && $client_ID === $user_selected[$j]['clientIDZ']) {
				$countX++;
			}
		}
	}
	if ($countX > 0) {
		$tprice += $data_checkout[$i]['currentPrice133'];
		$data_id = $data_checkout[$i]['partNo133'];
		$companyName = 'Comapny X';
		$sql_secondX = "INSERT INTO LinesZ(lineNoZ, poNoZ, partNoZ, priceOrderedZ, qtyZ, companyName) VALUES (NULL, '$insert_id_posNO', '$data_id','$tprice', '$countX', '$companyName')";

		$conn->query($sql_secondX);

	}
	else if ($countY > 0) {
		$tprice += $data_checkout[$i]['currentPriceY'];
		$data_id = $data_checkout[$i]['partNoY'];
		$companyName = 'Comapny Y';
		$sql_secondY = "INSERT INTO LinesZ(lineNoZ, poNoZ, partNoZ, priceOrderedZ, qtyZ, companyName) VALUES (NULL, '$insert_id_posNO', '$data_id','$tprice', '$countY', '$companyName')";
		$conn->query($sql_secondY);

	}
}

$clientdata = $_POST['clientdata'];
$clientMoneyhas = $_POST['clientMoneyhas'];

$checkout_Total_price = $_POST['checkout_Total_price'];

$clientMoneyOwned = $_POST['clientMoneyOwned'];

if ($clientdata == 1) {
	if ($checkout_Total_price > $clientMoneyhas) {
		$clientMoneyOwned = (($checkout_Total_price - (($checkout_Total_price*10)/100)) - $clientMoneyhas) ;
		$updateSql = "UPDATE ClientsZ SET dollarsOnOrderZ=0.00, moneyOwedZ='$clientMoneyOwned', DealsZ=2 WHERE clientIDZ = $client_ID";
		if ($conn->query($updateSql) === TRUE) {
		}
	}
	else if ($checkout_Total_price == $clientMoneyhas) {
		$updateSql = "UPDATE ClientsZ SET dollarsOnOrderZ=0.00, moneyOwedZ=0.00, DealsZ=2 WHERE clientIDZ = $client_ID";
		if ($conn->query($updateSql) === TRUE) {
		}
	}
	else{
		$clientMoneyhas = $clientMoneyhas - $checkout_Total_price;
		$updateSql = "UPDATE ClientsZ SET dollarsOnOrderZ='$clientMoneyhas', moneyOwedZ=0.00, DealsZ=2 WHERE clientIDZ = $client_ID";
		if ($conn->query($updateSql) === TRUE) {
		}
	}
}
else{
	if ($checkout_Total_price > $clientMoneyhas) {
		$clientMoneyOwned = $checkout_Total_price - $clientMoneyhas;
		$updateSql = "UPDATE ClientsZ SET dollarsOnOrderZ=0.00, moneyOwedZ='$clientMoneyOwned', DealsZ=0 WHERE clientIDZ = $client_ID";
		if ($conn->query($updateSql) === TRUE) {
		}
	}
	else if ($checkout_Total_price == $clientMoneyhas) {
		$updateSql = "UPDATE ClientsZ SET dollarsOnOrderZ=0.00, moneyOwedZ=0.00, DealsZ=0 WHERE clientIDZ = $client_ID";
		if ($conn->query($updateSql) === TRUE) {
		}
	}
	else{
		$clientMoneyhas = $clientMoneyhas - $checkout_Total_price;
		$updateSql = "UPDATE ClientsZ SET dollarsOnOrderZ='$clientMoneyhas', moneyOwedZ=0.00, DealsZ=0 WHERE clientIDZ = $client_ID";
		if ($conn->query($updateSql) === TRUE) {
		}
	}
}

$deleteSqlY = "DELETE FROM userSelectedZ WHERE clientIDZ = '$client_ID' ";

if ($conn->query($deleteSqlY) === TRUE) {
}

$conn->close();

?>