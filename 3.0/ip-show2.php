<html>
	<head>
		<meta charset="utf-8">
		<title>Nový záznam</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://momentjs.com/downloads/moment.js"></script>

<script id="source" language="javascript" type="text/javascript">

/**
 * Creates and loads an image element by url.
 * @param  {String} url
 * @return {Promise} promise that resolves to an image element or
 *                   fails to an Error.
 */
var request_image = function(url) {
    return new Promise(function(resolve, reject) {
        var img = new Image();
        img.onload = function() { resolve(img); };
        img.onerror = function() { reject(url); };
        img.src = url + '?random-no-cache=' + Math.floor((1 + Math.random()) * 0x10000).toString(16);
    });
};

/**
 * Pings a url.
 * @param  {String} url
 * @param  {Number} multiplier - optional, factor to adjust the ping by.  0.3 works well for HTTP servers.
 * @return {Promise} promise that resolves to a ping (ms, float).
 */
var ping = function(url, multiplier) {
    return new Promise(function(resolve, reject) {
        var start = (new Date()).getTime();
        var response = function() { 
            var delta = ((new Date()).getTime() - start);
            delta *= (multiplier || 1);
            resolve(delta); 
        };
        request_image(url).then(response).catch(response);
        
        // Set a timeout for max-pings, 5s.
        setTimeout(function() { reject(Error('Timeout')); }, 5000);
    });
};




var arr = [];
var pocet = 0;
var pingPocet = 0;

		timerId = setInterval(function () {
			ping('www.jakubkrizka.cz').then(function(delta) {
					$('#pingIp').fadeOut( "quick", function() {
						$('#pingIp').empty();
						$('#prumer').empty();
						pingPocet++;
						arr.push(delta);
						var average = arr.reduce(function(x,y,z){
							 return ((x * z) + y) / (z + 1);  
						});
						average = (Math.round(average*100)/100).toFixed(2);
						if (delta < "70") {
							$('#pingIp').css('color', 'green');
						} else if (delta > "71") {
							$('#pingIp').css('color', 'red');
						}
						$('#prumer').append("Průměrně: "+average+"ms<br>");
		      	$('#pingIp').append(pingPocet+". <b>ping: </b>"+delta+"ms");
						$('#pingIp').fadeIn( "quick" );
					});
		  }).catch(function(error) {
		      alert(String(error));
		  });
			$('#output').fadeOut( "quick", function() {
			 	$('#pocet').empty();
				$('#output').empty();
				pocet++;
				$('#pocet').append("<b>počet: </b>"+pocet);
				$.ajax({
					url: 'ip-show.php', 
					data: "", 
					dataType: 'json',  
					success: function(rows) {
						for (var i in rows) {
							var row = rows[i];          
							var id = row[0];
							var ip = row[1];
							var time = row[2];
							$('#output').append("<b>id: </b>"+id+"<b> name: </b>"+ip+"time: "+time)
								          .append("<hr />");
							setTimeout(function(){
								//$('#output').fadeIn( "quick" );
							}, 333);
						} 
					} 
			});
});
		}, 1000);

function slideonlyone() {
// for mobile
var connection = navigator.connection || navigator.mozConnection || navigator.webkitConnection;
alert(navigator.getBattery().level);
// navigator.onLine
// window.navigator.language
};


$(document).ready( function() {
   
			 $.ajax({                                      
				url: 'http://jakubkrizka.cz/3.0/ip-show.php', data: "", dataType: 'json',  success: function(rows)        
				{
					for (var i in rows)
					{
						var row = rows[i];          

						var id = row[0];
						var ip = row[1];
						var time = row[1];
						$('#output').append("<b>id: </b>"+id+"<b> name: </b>"+ip+"time: "+time)
						            .append("<hr />");
					} 
				} 
			});

 });



  </script>	

	</head>
	<body>
		<!-------------------------------------------------------------------------
  1) Create some html content that can be accessed by jquery
  -------------------------------------------------------------------------->
  <h2 id="time"></h2>
<div id="pingIp"></div><br>
<div id="prumer"></div>
<hr>
<div id="pingFtp"></div><br>
<div id="prumerFtp"></div>
<hr>
  <h3>Output: </h3>
<div id="pocet"></div>
<button onclick="slideonlyone();">click</button>
  <div id="output"></div>


  
	</body>
</html>
