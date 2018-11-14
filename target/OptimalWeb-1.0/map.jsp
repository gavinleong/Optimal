<!DOCTYPE html>
<html>
  <head>
    <title>Lat/Lng Object Literal</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAa0tNwqWx1GkADpw8YxvgM-KEynOtXX3s"></script>
    <script>
      // In this example, we center the map, and add a marker, using a LatLng object
      // literal instead of a google.maps.LatLng object. LatLng object literals are
      // a convenient way to add a LatLng coordinate and, in most cases, can be used
      // in place of a google.maps.LatLng object.

      var map;
      function initialize() {
        var mapOptions = {
          zoom: 19,
          center: {lat: 51.522134, lng: -0.079931}
        };
        map = new google.maps.Map(document.getElementById('map'),
            mapOptions);

     
        
        
          var marker = new google.maps.Marker({
          // The below line is equivalent to writing:
          // position: new google.maps.LatLng(-34.397, 150.644)
          position: {lat: 51.522134, lng: -0.079931},
          map: map
        });
        
           var marker = new google.maps.Marker({
          // The below line is equivalent to writing:
          // position: new google.maps.LatLng(-34.397, 150.644)
          position: {lat: 51.522095, lng: -0.079737},
          map: map
        });
        
        
           var marker = new google.maps.Marker({
          // The below line is equivalent to writing:
          // position: new google.maps.LatLng(-34.397, 150.644)
          position: {lat: 51.522079, lng: -0.079650},
          map: map
        });
        
        
        
           var marker = new google.maps.Marker({
          // The below line is equivalent to writing:
          // position: new google.maps.LatLng(-34.397, 150.644)
          position: {lat:51.522059, lng: -0.079514},
          map: map
        });
        
        
        
           var marker = new google.maps.Marker({
          // The below line is equivalent to writing:
          // position: new google.maps.LatLng(-34.397, 150.644)
          position: {lat:51.522053, lng: -0.079478},
          map: map
        });
        
          var marker = new google.maps.Marker({
          // The below line is equivalent to writing:
          // position: new google.maps.LatLng(-34.397, 150.644)
          position: {lat:51.522008, lng: -0.079220},
          map: map
        });
  
  
            var marker = new google.maps.Marker({
          // The below line is equivalent to writing:
          // position: new google.maps.LatLng(-34.397, 150.644)
          position: {lat:51.522008, lng: -0.079220},
          map: map
        });
  
     var flightPlanCoordinates = [
          {lat:51.522008, lng: -0.079220},
        {lat:51.522008, lng: -0.079220},
          {lat:51.522053, lng: -0.079478},
         {lat:51.522059, lng: -0.079514}
        ];
        
        
        
        var flightPath = new google.maps.Polyline({
          path: flightPlanCoordinates,
          geodesic: true,
          strokeColor: '#FF0000',
          strokeOpacity: 1.0,
          strokeWeight: 4
        });
        
        
        
         flightPath.setMap(map);


        // You can use a LatLng literal in place of a google.maps.LatLng object when
        // creating the Marker object. Once the Marker object is instantiated, its
        // position will be available as a google.maps.LatLng object. In this case,
        // we retrieve the marker's position using the
        // google.maps.LatLng.getPosition() method.
        var infowindow = new google.maps.InfoWindow({
          content: '<p>Marker Location:' + marker.getPosition() + '</p>'
        });

        google.maps.event.addListener(marker, 'click', function() {
          infowindow.open(map, marker);
        });
      }

      google.maps.event.addDomListener(window, 'load', initialize);
    </script>
  </head>
  <body>
    <div id="map"></div>
  </body>
</html>