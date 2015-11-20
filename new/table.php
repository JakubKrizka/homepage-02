<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Dokument bez názvu</title>
</head>

<body>


    
    
<?php

if (!$_POST["odeslane_id"]) {
	echo "je id";
} else {
echo "není id";
}

$zapisovy_ide = $_POST["odeslane_ide"];
$zapisovy_meta = $_POST["odeslane_meta"];
$zapisovy_metaorg = $_POST["odeslane_metaorg"];
$zapisovy_velikost = $_POST["odeslane_velikost"];
$zapisovy_cas = $_POST["odeslane_cas"];
$zapisovy_format = $_POST["odeslane_format"];
$zapisovy_bitrate = $_POST["odeslane_bitrate"];

$zapisovy_vformat = $_POST["odeslane_vformat"];
$zapisovy_vbitrate = $_POST["odeslane_vbitrate"];
$zapisovy_vrozliseni = $_POST["odeslane_vrozliseni"];
$zapisovy_vfps = $_POST["odeslane_vfps"];

$zapisovy_aformat = $_POST["odeslane_aformat"];
$zapisovy_abitrate = $_POST["odeslane_abitrate"];
$zapisovy_akanaly = $_POST["odeslane_akanaly"];
$zapisovy_avf = $_POST["odeslane_avf"];

$zapisovy_csfd = $_POST["odeslane_csfd"];
$zapisovy_rok = $_POST["odeslane_rok"];
$zapisovy_zanr = $_POST["odeslane_zanr"];
$zapisovy_popis = $_POST["odeslane_popis"];

$zapisovy_meta = str_replace("'", "\'", $zapisovy_meta);
$zapisovy_metaorg = str_replace("'", "\'", $zapisovy_metaorg);
$zapisovy_popis = str_replace("'", "\'", $zapisovy_popis);

$servername = "127.0.0.1";
$username = "jakubkrizka.cz";
$password = "tnqBY26Y";
$dbname = "jakubkrizkacz1";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

if (!$conn->set_charset("utf8")) {
    printf("Error loading character set utf8: %s\n", $conn->error);
} else {
    printf("Current character set: %s\n", $conn->character_set_name());
}

$sql = "CREATE TABLE filmy (
   ide int, 
   meta text, 
   metaorg text, 
   velikost text, 
   cas text, 
   format text, 
   bitrate text,
   
   vformat text,
   vbitrate text,
   vrozliseni text, 
   vfps text, 
   
   aformat text, 
   abitrate text,
   akanaly text,
   avf text,
   
   csfd text,
   rok text, 
   zanr text, 
   popis text)";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>

</body>
</html>