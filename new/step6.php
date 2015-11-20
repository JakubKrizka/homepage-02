<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Upload - Step 1</title>
		
		</head>
		<body>
		<?php
$mysqli = new mysqli("localhost", "root", "nelinecka", "test");

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

// Calculating lookup values
calcLookup();
// Getting maximum value for random generation
$Max = maxValue();

$rand = mt_rand(0, $Max);
$sql = "SELECT * FROM test_rand WHERE Lookup>=".$rand." LIMIT 1";
if ($result = $mysqli->query($sql)) {
    $Row = $result->fetch_object();
    var_dump($Row);
    
    $result->close();
}

$mysqli->close();

function calcLookup(){
    global $mysqli;

    $Weights = array();
    $sql = "SELECT ID, Weight FROM test_rand";
    if ($result = $mysqli->query($sql)) {
        while ($Row = $result->fetch_object()){
            $Weights[$Row->ID] = $Row->Weight;
        }
        $result->close();
    }
    
    $Cnt = 0;
    foreach($Weights as $ID=>$Weight){
        $Cnt+=$Weight;
        $sql = "UPDATE test_rand SET Lookup = ".$Cnt." WHERE ID=".$ID;
        $mysqli->query($sql);
    }
}

function maxValue(){
    global $mysqli;

    $sql = "SELECT SUM(Weight) AS TotWeight FROM test_rand";
    if ($result = $mysqli->query($sql)) {
        $Row = $result->fetch_object();
        $TotWeight = $Row->TotWeight;
        $result->close();
    }
    
    return $TotWeight;
}

?>

	</body>
</html>
