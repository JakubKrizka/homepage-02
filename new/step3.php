<!doctype html>
<html>
	<head>
	  <meta charset="utf-8">
		<title>Krok 3</title>
		<link rel="stylesheet" type="text/css" href="lib/jquery/jquery-ui.css">
		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Coming+Soon">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Comfortaa:700">
    <script src="lib/jquery/jquery-1.11.1.min.js"></script>
		<script src="lib/jquery/jquery-ui.js"></script>
		<script src="lib/jquery/autosizeinput.js"></script>
		<script src="lib/jquery/jquery.autosize.js"></script>
		<style type="text/css">
			body {
				font-family: 'Comfortaa', cursive;
        text-align: center;
			}
			#all {
        width: 800px; /* šírka layoutu */
        margin: 0 auto; /* vycentrovanie v ostatných prehliadačoch */
      }
      textarea {
        font-family: 'Roboto', sans-serif;
        font-size: 19px;
        border: 2px solid #ccc;
        resize: none;
        padding: 6px 6px;
        width: 98%;
        max-height: 180px;
        text-align: justify;
        white-space: normal;
        -webkit-transition: height 0.9s;
        -moz-transition: height 0.9s;
        transition: height 0.9s;
      }
      fieldset {
        border: 2px solid #ccc;	
			}
			th {
        text-align: left;
        font-size: 19px;
			}
			legend {
				text-align: center;
				font-size: 33px;
			}
			.ui-autocomplete {
				width: 30px;
				overflow-y: hidden;
				overflow-x: hidden;
			}
			input, button {
        text-align: center;
				font-family: 'Coming Soon', cursive;
        font-size: 24px;
        width: 100%;
        text-align: center;
        border: 2px solid #ccc;
			}
			hr {
			  border: 1px solid #ccc;
			}
		</style>
	</head>
	<body>
	<div id="all">
<!-------------------------------------------------------------------------------------
getID3() by James Heinrich <info@getid3.org>
available at http://getid3.sourceforge.net
or http://www.getid3.org
also https://github.com/JamesHeinrich/getID3
getID3() is released under multiple licenses. You may choose
from the following licenses, and use getID3 according to the
terms of the license most suitable to your project.
GNU GPL: https://gnu.org/licenses/gpl.html (v3)
https://gnu.org/licenses/old-licenses/gpl-2.0.html (v2)
https://gnu.org/licenses/old-licenses/gpl-1.0.html (v1)
GNU LGPL: https://gnu.org/licenses/lgpl.html (v3)
Mozilla MPL: http://www.mozilla.org/MPL/2.0/ (v2)
getID3 Commercial License: http://getid3.org/#gCL (payment required)
Copies of each of the above licenses are included in the 'licenses'
directory of the getID3 distribution.
---------------------------------------------------------------------------------------
jQuery.Autosize.Input
https://github.com/MartinF/jQuery.Autosize.Input
The MIT License (MIT)
Copyright (c) 2013 Dynamo
Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
-------------------------------------------------------------------------------------->
<?php
  // získání inforamcí $_POST
  $odeslane_csfd = $_POST["odeslane_csfd"];
  $csfdrok = $_POST["csfdrok"];
  $sessionid = $_POST['sessionid'];
  $user = $_POST['user'];
  $password = $_POST['password'];
  $id = $_POST['csfdid'];
  
  $FullFileName = $_POST["videoname"];
  
  // kontrola id
  if(!$id){ exit; }
  
  // načtení externích knihoven csfd & getid3
  include 'lib/csfd/global.php';
  require_once('lib/getid3/getid3.php');
  
  // inicializace tagu
  $getID3 = new getID3;
  
  // analyzuj video
  $ThisFileInfo = $getID3->analyze($FullFileName);
  
  // info hoď do komentu
  getid3_lib::CopyTagsToComments($ThisFileInfo);
  
  // hlavně nazapomenout na kódování
  $ThisFileInfo->$encoding="UTF-8";
  
  // toto netuším :D nějaký log
  logAction('FILM: '.$id);
  
  // získání kontréntních informací
  $film_html = getUrl('http://www.csfd.cz/film/'.$id, $sessionid, $user);
  $html = str_get_html($film_html);
  
  // INFO
  $info = $html->find('.info', 0);
  $nazev_cz = strip_tags( trim( $info->find('h1', 0)->innertext ) );
  $nazev_orig = trim( @$info->find('h3', 0)->innertext );
  $zanr = $info->find('.genre', 0)->innertext;
  $zeme = $info->find('.origin', 0)->innertext;
  $zeme = str_replace("&#039;", "'", $zeme);
  
  $nazev_cz = preg_replace('/[ ]{2,}|[\t]/', ' ', trim($nazev_cz));
  
  foreach($info->find('div') as $tvurci_html){
    $tvurci_array = csfdFilmTvurci($tvurci_html);
    $tvurci_typ = $tvurci_array['typ'];
    $tvurci[$tvurci_typ] = $tvurci_array['tvurci'];
  }
  
  $rating = csfdFilmRating( $html->find('#rating .average', 0)->innertext );
  
  $obsah = trim( strip_tags( @$html->find('#plots li', 0)->plaintext ) );
  $obsah = str_replace('&nbsp;', ' ', $obsah);
  $obsah = str_replace('&', '&amp;', $obsah);
  
  $obrazek = trim( $html->find('#poster img', 0)->src );
  
  $trailer_class = $html->find('.videos', 0)->class;
  $trailer = strstr($trailer_class, "disabled") ? 0 : 1;
  
  $galerie_class = $html->find('.photos', 0)->class;
  $galerie = strstr($galerie_class, "disabled") ? 0 : 1;
  
  // KOMENTARE
  
  $komentare = null;
  $i=0;
  $komentare_html = $html->find('.ui-posts-list', 0);
  if($komentare_html){
    foreach($komentare_html->find('li') as $komentar_html){  $i++;
      $komentar_dom = str_get_html($komentar_html);
      $komentare[$i]['jmeno'] = $komentar_dom->find('a', 0)->plaintext;
      $komentare[$i]['id'] = csfdId($komentar_dom->find('a', 0)->href);
      $text = $komentar_dom->find('p.post', 0)->plaintext;
      //$text = htmlspecialchars($text);
      $text = str_replace("&", "&amp;", $text);
      $komentare[$i]['text'] = $text;
      $rating_e = $komentar_dom->find('.rating', 0);
      if($rating_e){
        $rating_star = intval( strlen( @$komentar_dom->find('img.rating', 0)->alt ) );
      }else{
        $rating_star = null;
      }
      $komentare[$i]['rating'] = $rating_star;
    }
  }
  
  // TOKEN
  $token = @$html->find("#my-rating input[name=_token_]", 0)->value;
  
  // DELETE TOKEN
  $delete_link = @$html->find("#my-rating .private", 0)->href;
  preg_match("@token=(.+)&@", $delete_link, $delete_parts);
  $delete_token = isset($delete_parts[1]) ? $delete_parts[1] : null;
  
  // MY RATING
  $mystars = $html->find("#my-rating .my-rating img");
  $myrating = count($mystars);
  if($myrating==0){
    $isodpad = @$html->find("#my-rating .rating", 0)->plaintext;
    if($isodpad=="odpad!"){$myrating=0;}else{$myrating='';}
  }
  
  // LOGIN
  $login = @csfdId( @$html->find("#user-menu a", 0).href );
  
  // relogin
  if(!$login && $sessionid && $password){
    $logintext = file_get_contents($dirpath."login.php?user=$user&password=$password");
    $loginxml = new SimpleXMLElement($logintext);
    $sessionid = (string) $loginxml->sessionid;
    header("location:$dirpath"."film.php?id=$id&user=$user&password=$password&sessionid=$sessionid");
    exit;
  }
  echo '<form 
          method="post" 
          action="step4.php">';
  echo '<table border="0" cellspacing="0" cellpadding="3">';
  echo '<tr>
        <th 
          colspan="2" 
          id="celek">';
  echo '<fieldset id="zakladni-informace">';
  echo '<legend>
           Základní informace
        </legend>';
  echo 'Český název:
        <br>
        <input
          type="text" 
          id="odeslane-csfd-title-cesky" 
          name="odeslane_csfd_title_cesky" 
          value="'.$nazev_cz.'"/>
        <br><br>';
  echo 'Originální název:
        <br>
        <input 
          type="text" 
          id="odeslane-csfd-title-original" 
          name="odeslane_csfd_title_original" 
          value="'.$nazev_orig.'"/>
        <br><br>';
  echo 'Velikost:
        <br>
        <input 
          type="text" 
          readonly="readonly" 
          id="odeslane-ffmpeg-size" 
          name="odeslane_ffmpeg_size" 
          value="'.htmlentities(!empty($ThisFileInfo['filesize'])?round($ThisFileInfo['filesize'] / 1000000).' MB' : chr(160)).'" />
        <br><br>';
  echo 'Délka:
        <br>
        <input 
          type="text" 
          readonly="readonly" 
          id="odeslane-ffmpeg-time" 
          name="odeslane_ffmpeg_time" 
          value="'.htmlentities(!empty($ThisFileInfo['playtime_string'])?$ThisFileInfo['playtime_string'] : chr(160)).'"/>
        <br><br>';
  echo 'Formát:
        <br>
        <input 
          type="text" 
          readonly="readonly" 
          id="odeslane-ffmpeg-format" 
          name="odeslane_ffmpeg_format" 
          value="'.htmlentities($ThisFileInfo['fileformat']).'"/>
        <br><br>';
  echo 'Celkové Bitrate:
        <br>
        <input 
          type="text" 
          readonly="readonly" 
          id="odeslane-ffmpeg-bitrate"
          name="odeslane_ffmpeg_bitrate"
          value="'.htmlentities(!empty($ThisFileInfo['bitrate'])?round($ThisFileInfo['bitrate'] / 1000).' kbps' : chr(160)).'"/>
        <br><br>';
  echo '</fieldset>';
  echo '</th></tr>';
  echo '<tr>
        <th>
        <fieldset>
          <legend>
            Video
          </legend>';
  echo 'Format:
        <br>
        <input 
          type="text" 
          readonly="readonly" 
          id="odeslane-ffmpeg-video-format"
          name="odeslane_ffmpeg_video_format"
          value="'.$ThisFileInfo['video']['dataformat'].'"/>
        <br>
        <br>';
  echo 'Bitrate:
        <br>
        <input 
          type="text" 
          readonly="readonly" 
          id="odeslane-ffmpeg-video-bitrate" 
          name="odeslane_ffmpeg_video_bitrate" 
          value="'.htmlentities(!empty($ThisFileInfo['video']['bitrate'])?round($ThisFileInfo['video']['bitrate'] / 1000).' kbps' : chr(160)).'"/>
        <br>
        <br>';
  echo 'Rozlišení:
        <br>
        <input 
          type="text" 
          readonly="readonly" 
          id="odeslane-ffmpeg-video-resolution" 
          name="odeslane_ffmpeg_video_resolution" 
          value="'.$ThisFileInfo['video']['resolution_x'].'x'.$ThisFileInfo['video']['resolution_y'].'"/>
        <br>
        <br>';
  echo 'Snímků za vteřinu:
        <br>
        <input 
          type="text" 
          readonly="readonly" 
          id="odeslane-ffmpeg-video-fps"
          name="odeslane_ffmpeg_video_fps"
          value="'.htmlentities(!empty($ThisFileInfo['video']['frame_rate'])?round($ThisFileInfo['video']['frame_rate']). ' FPS': chr(160)).'"/>
        <br>
        <br>';
  echo '</fieldset>';
  echo '</th>
        <th>
        <fieldset>
          <legend>
            Audio
          </legend>';
  echo 'Format: 
        <br>
        <input 
          type="text" 
          readonly="readonly"
          id="odeslane-ffmpeg-audio-format"
          name="odeslane_ffmpeg_audio_format" 
          value="'.$ThisFileInfo['audio']['dataformat'].'"/>
        <br>
        <br>';
  echo 'Bitrate:
        <br>
        <input 
          type="text" 
          readonly="readonly" 
          id="odeslane-ffmpeg-audio-bitrate" 
          name="odeslane_ffmpeg_audio_bitrate" 
          value="'.htmlentities(!empty($ThisFileInfo['audio']['bitrate'])?round($ThisFileInfo['audio']['bitrate'] / 1000).' kbps' : chr(160)).'"/>
        <br>
        <br>';
  echo 'Nastavení kanálů:
        <br>
        <input 
          type="text" 
          readonly="readonly" 
          id="odeslane-ffmpeg-audio-channels" 
          name="odeslane_ffmpeg_audio_channels" 
          value="'.$ThisFileInfo['audio']['channelmode'].' ('.$ThisFileInfo['audio']['channels'].')"/>
        <br>
        <br>';
  echo 'Vzorkovací frekvence:
        <br>
        <input 
          type="text" 
          readonly="readonly" 
          id="odeslane-ffmpeg-audio-sampling" 
          name="odeslane_ffmpeg_audio_sampling" 
          value="'.htmlentities(!empty($ThisFileInfo['audio']['sample_rate'])?round($ThisFileInfo['audio']['sample_rate'] / 1000).' kHz' : chr(160)).'"/>
        <br>
        <br>';
  echo '</fieldset></th></tr>';
  echo '<tr><th colspan="2">';
  echo '<fieldset>';
  echo '<legend>
          CSFD
        </legend>';
   echo 'ID:
        <br>
        <input 
          type="text" 
          id="odeslane-ffmpeg-id-csfd" 
          name="odeslane_ffmpeg_id_csfd" 
          value="'.$id.'"/>
        <br><br>';
  echo 'Odkaz:
        <br>
        <input 
          type="text" 
          id="odeslane-csfd-url" 
          name="odeslane_csfd_url" 
          value="'.$odeslane_csfd.'"/>
        <br><br>';
  echo 'Rok:
        <br>
        <input 
          type="text" 
          id="odeslane-csfd-year" 
          name="odeslane_csfd_year" 
          value="'.$csfdrok.'"/>
        <br><br>';
  echo 'Žánr:
        <br>
        <input 
          type="text" 
          id="odeslane-csfd-genre" 
          name="odeslane_csfd_genre" 
          value="'.$zanr.'"/>
        <br><br>';
  echo 'Popis:
        <br>
        <textarea 
          placeholder="Popis..."
          id="odeslane-csfd-description"
          name="odeslane_csfd_description">'
          .$obsah.
        '</textarea>';
  echo '<hr>';
  echo '<button type="submit">Zapsat</button>';
  echo '</fieldset></th></tr>';
  echo '</table>';

  echo '</form>';
?>
</div>
</body>
<script>
		$(function() {
			var availableTags = [
				"ab",
				"aa",
				"af",
				"sq",
				"am",
				"ar",
				"an",
				"hy",
				"as",
				"ay",
				"az",
				"ba",
				"eu",
				"bn",
				"dz",
				"bh",
				"bi",
				"br",
				"bg",
				"my",
				"be",
				"km",
				"ca",
				"zh",
				"co",
				"hr",
				"cs",
				"da",
				"nl",
				"en",
				"eo",
				"et",
				"fo",
				"fa",
				"fj",
				"fi",
				"fr",
				"fy",
				"gl",
				"gd",
				"gv",
				"ka",
				"de",
				"el",
				"kl",
				"gn",
				"gu",
				"ht",
				"ha",
				"he",
				"iw",
				"hi",
				"hu",
				"is",
				"io",
				"id",
				"in",
				"ia",
				"ie",
				"iu",
				"ik",
				"ga",
				"it",
				"ja",
				"jv",
				"kn",
				"ks",
				"kk",
				"rw",
				"ky",
				"rn",
				"ko",
				"ku",
				"lo",
				"la",
				"lv",
				"li",
				"ln",
				"lt",
				"mk",
				"mg",
				"ms",
				"ml",
				"mt",
				"mi",
				"mr",
				"mo",
				"mn",
				"na",
				"ne",
				"no",
				"oc",
				"or",
				"om",
				"ps",
				"pl",
				"pt",
				"pa",
				"qu",
				"rm",
				"ro",
				"ru",
				"sm",
				"sg",
				"sa",
				"sr",
				"sh",
				"st",
				"tn",
				"sn",
				"ii",
				"sd",
				"si",
				"ss",
				"sk",
				"sl",
				"so",
				"es",
				"su",
				"sw",
				"sv",
				"tl",
				"tg",
				"ta",
				"tt",
				"te",
				"th",
				"bo",
				"ti",
				"to",
				"ts",
				"tr",
				"tk",
				"tw",
				"ug",
				"uk",
				"ur",
				"uz",
				"vi",
				"vo",
				"wa",
				"cy",
				"wo",
				"xh",
				"yi",
				"ji",
				"yo",
				"zu"
			];
			$( "#jazyk" ).autocomplete({
				source: availableTags
			});
         $(function(){
				$('textarea').autosize();
			});
		});
		</script>
</html>



