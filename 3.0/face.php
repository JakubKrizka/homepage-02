<!DOCTYPE html>
<html>
	<head>
		<title>Facebook | Hub (Beta)</title>
		<meta charset="UTF-8">
		<script src='http://code.jquery.com/jquery-latest.min.js'></script>
		<script src='http://connect.facebook.net/en_US/sdk.js'></script>	
</head>
	<body>
		<script>
			window.fbAsyncInit=function(){
				FB.init({
					appId	:'762871890475953',
					cookie	:true,
					xfbml	:true,
					version	:'v2.3'
				});
				FB.getLoginStatus(function(response) {
					statusChangeCallback(response);
				});
			};
			function statusChangeCallback(response){
				document.getElementById("status").innerHTML = response.status;
				if(response.status==='connected'){
					document.getElementById("accessToken").innerHTML = response.authResponse.accessToken;
					document.getElementById("expiresIn").innerHTML = response.authResponse.expiresIn;
					document.getElementById("signedRequest").innerHTML = response.authResponse.signedRequest;
					document.getElementById("userID").innerHTML = response.authResponse.userID;

				  var expiresIn = response.authResponse.expiresIn, display = document.querySelector('#fb_logof');
				  startTimer(expiresIn, display);
					Logged(); 
				}else if(response.status==='not_authorized'){
					document.getElementById('status').innerHTML='Please log into this app.';
					document.getElementById("fb_logof").style.visibility = "hidden";
				}else{
					document.getElementById('status').innerHTML='Please log into Facebook.';
					document.getElementById("fb_logof").style.visibility = "hidden";
				}
			}
			function Logged(){
				FB.api('/me', function(response) {
          console.log(JSON.stringify(response));
					$('#fb_login').hide();
					document.getElementById("fb_logof").style.visibility = "visible";
					document.getElementById("name").innerHTML = response.name;
					document.getElementById("email").innerHTML = response.email;
					document.getElementById("avatar").setAttribute("src", "https://graph.facebook.com/" + response.id + "/picture?type=large");
					
				});
			}
			function log_out(){
			FB.logout(function(response) {
			  	alert('Odhlášení bylo úspěšné');
				location.reload(); 
			});
			}
			// set up time and live countdown
			function startTimer(duration, display) {
			    var timer = duration;
			    setInterval(function () {
				// transfer expires time from seconds to readable time
				var seconds = timer;
				// multiply by 1000 because Date() requires miliseconds
				var date = new Date(seconds * 1000);
				var hh = date.getUTCHours();
				var mm = date.getUTCMinutes();
				var ss = date.getSeconds();
				// If you were building a timestamp instead of a duration, you would uncomment the following line to get 12-hour (not 24) time
				// if (hh > 12) {hh = hh % 12;}
				// These lines ensure you have two-digits
				if (hh < 10) {hh = "0"+hh;}
				if (mm < 10) {mm = "0"+mm;}
				if (ss < 10) {ss = "0"+ss;}
				// This formats your string to HH:MM:SS
				display.textContent = "Odhlásit nebo automaticky za: " + hh + ":" + mm + ":" + ss;
				
        if (--timer < 0) {
					log_out();
				}
			    }, 1000);
			}







		</script>
		<fb:login-button id=fb_login scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button>
		
<button id="fb_logof" onclick="log_out()"></button>

<hr>
<h1 id="name"></h1>
<h2 id="email"></h2>
<img id="avatar"/>

<hr>
<h1 id="status"></h1>
<h2>authResponse</h2>
<h3>accessToken:</h3>
<p id="accessToken"/>
<h3>expiresIn:</h3>
<p id="expiresIn"/>
<h3>signedRequest:</h3>
<p id="signedRequest"/>
<h3>userID:</h3>
<p id="userID"/>
<hr>


	</body>
</html>
