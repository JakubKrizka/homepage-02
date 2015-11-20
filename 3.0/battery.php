<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <title>Battery Status API Example</title>
  <script>
    window.onload = function () {



window.navigator.vibrate([200, 100, 200]);







      function updateBatteryStatus(battery) {
        document.querySelector('#charging').textContent = battery.charging ? 'nabíjení' : 'vybíjení';
        document.querySelector('#level').textContent = battery.level * 100 + "%";
        document.querySelector('#dischargingTime').textContent = battery.dischargingTime;
      }

      navigator.getBattery().then(function(battery) {
        // Update the battery status initially when the promise resolves ...
        updateBatteryStatus(battery);

        // .. and for any subsequent updates.
        battery.onchargingchange = function () {
          updateBatteryStatus(battery);
        };

        battery.onlevelchange = function () {
          updateBatteryStatus(battery);
        };

        battery.ondischargingtimechange = function () {
          updateBatteryStatus(battery);
        };
      });

/*
if ("geolocation" in navigator) {
  alert('geolocation is available');
} else {
  alert('geolocation IS NOT available');
}
*/
// navigator.platform




    };
function vibre() {
window.navigator.vibrate([500, 50, 200, 60, 100]);
}

  </script>
</head>
<body>
  <div id="charging">(charging state unknown)</div>
  <div id="level">(battery level unknown)</div>
  <div id="dischargingTime">(discharging time unknown)</div><hr>
<button onclick="vibre()">vybruj</button>
</body>
</html>
