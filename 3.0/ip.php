<?php
	$receive_pin=$_POST["pin"];
  	$pin = '3e4a270f1ade252d957617c22871b01c10c14693c4b6a2d90f8bf85aaa2c9d45cf4cbe2056fde8f648c7b6052231c31b56eb76d67b03fe8dfb43892b26f9813e';
	if ($receive_pin == $pin) {
    	// write ip adress to variable
		$ip_of_home =  $_SERVER["REMOTE_ADDR"];
		// set database connect info
		$sql_servername = "127.0.0.1";
		$sql_username = "jakubkrizka.cz";
		$sql_password = "tnqBY26Y";
		$sql_dbname = "jakubkrizkacz1";
		// create connection
		$conn = new mysqli($sql_servername, $sql_username, $sql_password, $sql_dbname);
		// check connection
		if ($conn->connect_error) {
		  die("Connection failed: " . $conn->connect_error . "\n");
		}
		// set utf8
		if (!$conn->set_charset("utf8")) {
		  printf("Error loading character set utf8: %s\n", $conn->error . "\n");
		}
		// načtení posledního výsledku
		$sql = "SELECT * FROM ip_home order by id desc limit 1";
		// execute sql command
		$result = $conn->query($sql);
		// fetch row
		$row = $result->fetch_row();
		// define ip address
		$ip_address_last = $row[1];

		if ($ip_address_last == $ip_of_home) {
			echo "stejné";
		} else {
			echo "není stejné";
		}

		$sql_write = "INSERT INTO ip_home (ip_address) VALUES ('$ip_of_home')";
		// write sql to database
		if ($conn->query($sql_write) === TRUE) {
		  $date_now = date('Y-m-d H:i:s');
		  echo "OKi | address: " . $ip_of_home . " | time: " . $date_now . "\n";
		} else {
		  // write info about error
		  echo "FAIL | " . $sql_write . ":" . $conn->error . "\n";
		}
		// close connection
		$conn->close();
	} else {
?>
	<html>
		<head>
			<meta charset="utf-8">
			<meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
 			<style>
				body {
				  text-align: center;
				}
				h1 {
				  font-size: 33px;
				  color: red;
				}
				h2 {
				  font-size: 23px;
				  color: red;
				}
			</style>
		</head>
		<body>
    <?php
			echo '<h1>Klíče nesouhlasí</h1>';
		  echo '<h2>[en] Key is not match</h2>';
    ?>
		</body>
	</html>
	<?php
	}
?>
