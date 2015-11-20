<?php
	include 'lib/csfd/global.php';
	
	$videoname = $_POST['videoname'];
	$csfdname = $_POST['csfdname'];
	$csfdnamesearch = str_replace(" ", "+", $csfdname);
	
	logAction('HLEDAT: '.$csfdnamesearch);
	$html = file_get_html('http://www.csfd.cz/hledat/?q='.$csfdnamesearch);
	
	$filmy = '';
	
	$i = 0;
	
	foreach( $html->find('#search-films li') as $film_html){
		$i++;
		$film = str_get_html($film_html);
		$filmy[$i]['nazev'] = $film->find('a.film', 0)->innertext;
		$el_type = $film->find('.film-type', 0);
		$filmy[$i]['typ'] = $el_type ? $el_type->innertext : null;
		$filmy[$i]['rating'] = csfdRating( $film->find('a.film', 0)->class );
		$filmy[$i]['id'] = csfdId( $film->find('a.film', 0)->href );
		$filmy[$i]['rok'] = csfdHledatRok( $film );
	}
	
	if(!$filmy AND $html->find('#pg-film', 0)){
		$info = $html->find('.info', 0);
		$filmy[1]['nazev'] = trim( $info->find('h1', 0)->innertext );
		//echo $info->find('.origin', 0)->innertext;
		$filmy[1]['rok'] = csfdHledatRok( $info->find('.origin', 0) );
		$filmy[1]['id'] = csfdId( $html->find('.trivia a', 0)->href );
	  $filmy[$i]['typ'] = $el_type ? $el_type->innertext : null;
		$filmy[1]['rating'] = csfdConvertRating( $html->find('#rating .average', 0)->innertext );
	}
?>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Krok 2</title>
		<link href='http://fonts.googleapis.com/css?family=Coming+Soon' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
		<script src="lib/jquery/jquery-1.11.1.min.js"></script>
		<script src='lib/jquery/autosizeinput.js'></script>
		<style>
			a {
			  font-family: 'Noto Sans', sans-serif;
				font-size: 26px;
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
			}
			h1 {
			   font-family: 'Noto Sans', sans-serif;
			   font-size: 33px;
			   text-align: center;
			}
			button {
        font-family: 'Noto Sans', sans-serif;
			  font-size: 26px;
				text-align: center;
				width: 254px;
				border: 2px solid #ccc;
			}
			.hide {
				width: 1px;
				height: 1px;
				margin: 0;
				padding: 0;
				font-size: 1px;
				visibility: hidden;
				position: absolute;
			}
		</style>
	</head>
	<body>
			<input class="hide" type="text" name="videoname" id="videoname" value="<?php echo $videoname; ?>"/>
			<input class="hide" type="text" name="csfdname" id="csfdname" value="<?php echo $csfdname; ?>"/>
			<h1>Hledání podle názvu (CSFD):</h1>
			<hr>
			<?php
				foreach($filmy as $film){
					echo '<form action="step3.php" method="post">';
					echo '<a target="_blank" href="http://www.csfd.cz/film/'.$film['id'].'">'.$film['nazev'].' ('.$film['rok'].') '.$film['typ'].'</a>';
					echo '<input name="csfdid" class="hide" value="'.$film['id'].'"/>';
          echo '<input name="videoname" class="hide" value="'.$videoname.'"/>';
          echo '<input name="csfdname" class="hide" value="'.$csfdname.'"/>';
          echo '<input name="csfdrok" class="hide" value="'.$film['rok'].'"/>';
          echo '<input value="http://www.csfd.cz/film/'.$film['id'].'" name="odeslane_csfd" class="hide"/>';
					echo '<br><br>';
					echo '<button type="submit" id="'.$film['id'].'">Vybrat >></button>';
          echo '</form>';
					echo '<hr>';
				}
			?>
		</form>
	</body>
</html>
