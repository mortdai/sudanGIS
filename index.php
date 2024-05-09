<!DOCTYPE html >
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <title>SUDAN DEOINGORMATION SYSTEM</title>
  <link rel="stylesheet" href="style.css">
     
   <script> function change() {
    var selectBox = document.getElementById("show");
    var selected = selectBox.options[selectBox.selectedIndex].value;
    var textarea = document.getElementById("text_area");
    if(selected === '1'){
        textarea.show();
    }
    else{
        textarea.hide();
    }
});</script>
  </head>

  <body>
      <div id="caption">
          
          <p> Sudan GeoInformation System (SGIS)</p>
      </div>

    <div id="map" ></div>
  
    <div id="inf" >
 
    <select id="show" class="form-control" name="show_text_area" onchange="change()">  

      <option value="australia">Kortoum State</option>
    </select>
  
    </div>
  <center> 
      <div id="text_area" class="form-control"   style="display:"> 
        <a href="locals.php" >locals</a>
        <a href="population.php">population</a>
        <a href="university.php">university</a>
      </div>
      
  </center>

    <script>
     function myMap() {
  var mapCanvas = document.getElementById("map");
  var myCenter = new google.maps.LatLng(15.5006544,32.55989939999995); 
  var mapOptions = {center: myCenter, zoom: 4};
  var map = new google.maps.Map(mapCanvas,mapOptions);
  var marker = new google.maps.Marker({
    position: myCenter,
    animation: google.maps.Animation.BOUNCE
  });
  marker.setMap(map);
}
</script>
   
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNmeZCfnHIWDuOdkcjBkYxBbALYN-oya8&callback=myMap"></script>
   
  </body>
</html>
