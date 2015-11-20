<html lang="cs">
  <head>
    <meta charset="utf-8">
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="127854508965-4l84r6ddmomcj1jo0q0ndjq413mnimtd.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <script>


      function onSignIn(googleUser) {
				var profile = googleUser.getBasicProfile();
        // Useful data for your client-side scripts:
 				var fiveMinutes = 60 * 1,
        display = document.querySelector('#time');
    		startTimer(fiveMinutes, display);
        document.getElementById("id").innerHTML = profile.getId();
        document.getElementById("name").innerHTML = profile.getName();
        document.getElementById("img").innerHTML = "<img src='" + profile.getImageUrl() + "'/>";
        document.getElementById("email").innerHTML = profile.getEmail();
        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        document.getElementById("id_token").innerHTML = id_token;
      };

     function signOut() {
       var auth2 = gapi.auth2.getAuthInstance();
       auth2.signOut().then(function () {
					clearInterval(timerId);
         alert("Odlhášení proběhlo úspěšně");
				location.reload();
       });
     };
				
function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
				timerId = setInterval(function () {
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
						display.textContent = "Automatické odhlášení za: " + hh + ":" + mm + ":" + ss;

				    if (--timer < 0) {
				        signOut();
				    }
				}, 1000);
		

};
function expand() {
 clearInterval(timerId);
};

    </script>
  </head>
  <body>
    <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div><br>
<button onclick="signOut();">Odhlásit</button>
<br>
<p id="time"></p>
<button id="expand" onclick="expand();">Vypnout</button>
    <hr>
		<h1>ID: </h1>    
		<p id="id"></p>
		<h1>Jméno: </h1>    
		<p id="name"></p>
		<h1>Avatar: </h1>
		<p id="img"></p>
		<h1>Email: </h1>    
		<p id="email"></p>
		<h1>ID Token: </h1>    
		<p id="id_token"></p>
  </body>
</html>


