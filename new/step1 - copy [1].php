<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Upload - Step 1</title>
		<link rel="stylesheet" href="lib/jquery/jquery-ui.css">
		<script src="lib/jquery/jquery-1.11.1.min.js"></script>
		<script src="lib/jquery/jquery-ui.js"></script>
		<script src='lib/jquery/autosizeinput.js'></script>
		<style>
			.ui-autocomplete-category {
				font-weight: bold;
				padding: .2em .4em;
				margin: .8em 0 .2em;
				line-height: 1.5;
			}
			.ui-autocomplete {
				width: 245px;
				max-height: 250px;
				overflow-y: hidden;
				/* prevent horizontal scrollbar */
				overflow-x: hidden;
			}
			body,input, button {
				font-family: "Trebuchet MS", "Helvetica", "Arial",  "Verdana", "sans-serif";
				font-size: 26px;
			}
			input {
				text-align: left;
				-webkit-transition: width 0.6s;
				-moz-transition: width 0.6s;
				transition: width 0.6s;
				width: 250px;
				min-width: 250px;
			}
		</style>
		<script>
		$(function() {
			var availableTags = [
				<?php
					foreach (glob("*") as $vypis) {
						echo '"'.$vypis.'",';
					}
				?>
			];
			$( "#videoname" ).autocomplete({
				source: availableTags
			});
$(videoname).autosizeInput();
$(csfdname).autosizeInput();

		});
		</script>
	</head>
	<body>
		<?php
			echo 'Soubory "WEBM": <br>';
			foreach (glob("*") as $vypis) {
				echo ''.$vypis.'<br>';
			}
		?>
		<hr>
		<form action="step2.php" method="post">
			<input type="text" name="videoname" id="videoname" placeholder="Název souboru..."/>
			<br>
			<input type="text" name="csfdname" id="csfdname" placeholder="Název filmu..."/>
			<br>
			<button type="submit">Pokračovat</button>
		</form>
		<hr>
		<?php 
//Get the title of the movie
$title = "Harvie Krumpet";

//'y'(Year) key at the end of the url is optional.
//But its always good practice to sent the year; 
//as title can be same for multiple movies
$year = "2003";

//Replace spaces and apostrophe mark in the title with html entities
//This will make title from 'Mr. Bean's Holiday' 
//to 
//'Mr.%20Bean%27s%20Holiday'
$title = urlencode($title);

//Call the omdb api
$json=file_get_contents("http://www.omdbapi.com/?t=$title&y=$year");

$details=json_decode($json);

//Check if respose contains the movie information
if($details->Response=='True')
{   
    //Print the movie information
    echo "IMDB-ID : ".$details->imdbID.'<br>';
    echo "Title : ".$details->Title.'<br>';
    echo "Year : ".$details->Year.'<br>';
    echo "Rated : ".$details->Rated.'<br>';
    echo "<a name='poster' src='".$details->Poster."'></a><br>";
    echo "Released Date: ".$details->Released.'<br>';
    echo "Runtime : ".$details->Runtime.'<br>';
    echo "Genre : ".$details->Genre.'<br>';
    echo "Director : ".$details->Director.'<br>';
    echo "Writer : ".$details->Writer.'<br>';
    echo "Actors : ".$details->Actors.'<br>';
    echo "Plot : ".$details->Plot.'<br>';
    echo "Language : ".$details->Language.'<br>';
    echo "Country : ".$details->Country.'<br>';
    echo "Awards : ".$details->Awards.'<br>';
    echo "Metascore : ".$details->Metascore.'<br>';
    echo "IMDB Rating : ".$details->imdbRating.'<br>';
    echo "IMDB Votes : ".$details->imdbVotes.'<br>';
}
//Show message if the movie information is not returned by APIs
else 
{
     echo "Movie information not available.Please confirm title";
}


$mysqli = new mysqli('localhost', 'root', 'nelinecka', 'test');
  $tb="meta";
  if ($mysqli->connect_error) {
    die('Nepodařilo se připojit k MySQL serveru (' . $mysqli->connect_errno . ') '. $mysqli->connect_error);
  }
  mysqli_set_charset($mysqli,"utf8");
  $navrat=$mysqli->query("SELECT * FROM `filmy` ORDER BY `filmy`.`meta` ASC");
  $pocet = $navrat->num_rows;
  $pocetplus = $pocet + '1';
  echo $pocetplus;
  $mysqli->close();









?>
	</body>
</html>



