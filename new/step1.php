<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Krok 1</title>
		<script src="lib/jquery/jquery-1.11.1.min.js"></script>
		<script src="lib/jquery/jquery-ui.js"></script>
		<script src='lib/jquery/autosizeinput.js'></script>
		<link rel="stylesheet" href="lib/jquery/jquery-ui.css">
		<link href='http://fonts.googleapis.com/css?family=Coming+Soon' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
		<style>
			.ui-autocomplete {
			   font-family: 'Coming Soon', cursive;
			   font-size: 26px;
				width: 245px;
				max-height: 250px;
				/* prevent horizontal scrollbar */
				overflow-x: hidden;
			}
			h1 {
			   font-family: 'Noto Sans', sans-serif;
			   font-size: 33px;
			   text-align: center;
			}
			li {
			   font-family: 'Noto Sans', sans-serif;
			   font-size: 27px;
			   font-style: italic;
			}
			input {
			   font-family: 'Coming Soon', cursive;
			   font-size: 26px;
				text-align: left;
				-webkit-transition: width 0.6s;
				-moz-transition: width 0.6s;
				transition: width 0.6s;
				width: 250px;
				min-width: 250px;
				border: 2px solid #ccc;
			}
			button  {
			   font-family: 'Noto Sans', sans-serif;
			   font-size: 26px;
				text-align: center;
				width: 254px;
				border: 2px solid #ccc;
			}
		</style>
		<script>
		$(function() {
			var availableTags = [
				<?php
					foreach (glob("*.webm") as $vypis) {
						echo '"'.$vypis.'",';
					}
					foreach (glob("*.mp4") as $vypis) {
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
		<h1>Testovací soubory k dispozici:</h1>
		<hr>
		<ul>
        <?php
			foreach (glob("*.webm") as $vypis) {
				echo '<li>'.$vypis.'</li>';
			}
			foreach (glob("*.mp4") as $vypis) {
				echo '<li>'.$vypis.'</li>';
			}
		?>
		</ul>
		<hr>
		<form action="step2.php" method="post">
			<input type="text" name="videoname" id="videoname" placeholder="Název souboru..."/>
			<br>
			<input type="text" name="csfdname" id="csfdname" placeholder="Název filmu..."/>
			<br>
			<button type="submit">Pokračovat >></button>
		</form>
		<hr>
	
	</body>
</html>



