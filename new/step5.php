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
				width: 500px;
				/* prevent horizontal scrollbar */
				overflow-x: hidden;
			}
			body,input, button {
				font-family: "Trebuchet MS", "Helvetica", "Arial",  "Verdana", "sans-serif";
				font-size: 16px;
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
            $mysqli = new mysqli('localhost', 'root', 'nelinecka', 'test');
            $tb="meta";
            if ($mysqli->connect_error) {
              die('Nepodařilo se připojit k MySQL serveru (' . $mysqli->connect_errno . ') '. $mysqli->connect_error);
            }
            mysqli_set_charset($mysqli,"utf8");
            $navrat=$mysqli->query("SELECT * FROM `filmy` ORDER BY `filmy`.`meta` ASC");
            $pocet=$navrat->num_rows;
            while ($row = $navrat->fetch_assoc()) {
              echo '"'.$row['meta'].' ('.$row['rok'].')",';
            }
          ?>
  			];
        $(hledejsmudlo).autosizeInput();
        $( "#hledejsmudlo" ).autocomplete({
  			  source: availableTags
  			});
  		});
		</script>
	</head>
	<body>
		<form action="step6.php" method="post">
      <input type="text" name="hledejsmudlo" id="hledejsmudlo" placeholder="Hledat film... (počet: <?php echo $pocet;?>)"/>
			<button type="submit">Pokračovat</button>
		</form>
		<hr>
		<fieldset>
    <legend>Dospupné výsledky
    </legend>
            <?php
            $navrat=$mysqli->query("SELECT * FROM `filmy` ORDER BY `filmy`.`meta` ASC");
            $pocet=$navrat->num_rows;
            while ($row = $navrat->fetch_assoc()) {
              echo '<b>'.$row['meta'].'</b><br>';
              echo '<i>'.$row['metaorg'].'</i><br>';
              echo '('.$row['rok'].') '.$row['zanr'].'<hr>';
            }
            $mysqli->close();
            ?>
    </fieldset>
	</body>
</html>



