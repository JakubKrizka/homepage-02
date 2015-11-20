<?php
// $filename = 'http://api.wunderground.com/api/74df516100c6f656/satellite/q/MI/Ann_Arbor.png?lat=49.2207977&lon=16.5734974&radius=300&basemap=1&smooth=1&borders=1&timelabel=1&timelabel.x=3&timelabel.y=15&width=600&height=480&gtt=90';
// $filename = 'http://aktual.meteopress.cz/maps/vitr2.gif';
$filename = 'http://vvv.chmi.cz/satelit/vis-ir.gif';
$jpeg_image = file_get_contents($filename);
echo $jpeg_image;
$count = Date("H-i", Time());
file_put_contents($count . '.gif',$jpeg_image);
?>
<html>
<head>

</head>
<body>
<a href="http://www.slunecno.cz/mista/brno-4"><img src="http://www.slunecno.cz/predpoved-na-web.php?obr=7&amp;m=4&amp;modern" alt="Počasí Brno - Slunečno.cz" style="border: 0px;" /></a>
</body>
</html>
