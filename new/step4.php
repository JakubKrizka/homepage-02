<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Dokument bez názvu</title>
</head>

<body>
    
<?php

$zapisovy_csfd_title_cesky = $_POST["odeslane_csfd_title_cesky"];
$zapisovy_csfd_title_original = $_POST["odeslane_csfd_title_original"];
$zapisovy_csfd_url = $_POST["odeslane_csfd_url"];
$zapisovy_csfd_year = $_POST["odeslane_csfd_year"];
$zapisovy_csfd_genre = $_POST["odeslane_csfd_genre"];
$zapisovy_csfd_description = $_POST["odeslane_csfd_description"];

$zapisovy_ffmpeg_id_csfd = $_POST["odeslane_ffmpeg_id_csfd"];
$zapisovy_ffmpeg_size = $_POST["odeslane_ffmpeg_size"];
$zapisovy_ffmpeg_time = $_POST["odeslane_ffmpeg_time"];
$zapisovy_ffmpeg_format = $_POST["odeslane_ffmpeg_format"];
$zapisovy_ffmpeg_bitrate = $_POST["odeslane_ffmpeg_bitrate"];

$zapisovy_ffmpeg_video_format = $_POST["odeslane_ffmpeg_video_format"];
$zapisovy_ffmpeg_video_bitrate = $_POST["odeslane_ffmpeg_video_bitrate"];
$zapisovy_ffmpeg_video_resolution = $_POST["odeslane_ffmpeg_video_resolution"];
$zapisovy_ffmpeg_video_fps = $_POST["odeslane_ffmpeg_video_fps"];

$zapisovy_ffmpeg_audio_format = $_POST["odeslane_ffmpeg_audio_format"];
$zapisovy_ffmpeg_audio_bitrate = $_POST["odeslane_ffmpeg_audio_bitrate"];
$zapisovy_ffmpeg_audio_channels = $_POST["odeslane_ffmpeg_audio_channels"];
$zapisovy_ffmpeg_audio_sampling = $_POST["odeslane_ffmpeg_audio_sampling"];


$zapisovy_csfd_title_cesky = str_replace("'", "\'", $zapisovy_csfd_title_cesky);
$zapisovy_csfd_title_original = str_replace("'", "\'", $zapisovy_csfd_title_original);
$zapisovy_csfd_description = str_replace("'", "\'", $zapisovy_csfd_description);

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

$sql = "INSERT INTO csfd (
   id,
   title_original,
   title_cesky, 
   year, 
   genre, 
   url, 
   description)
VALUES (
   '$zapisovy_ffmpeg_id_csfd', 
   '$zapisovy_csfd_title_original', 
   '$zapisovy_csfd_title_cesky', 
   '$zapisovy_csfd_year', 
   '$zapisovy_csfd_genre', 
   '$zapisovy_csfd_url', 
   '$zapisovy_csfd_description')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>

</body>
</html>