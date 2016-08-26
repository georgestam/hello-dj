$(document).ready(function() {
  var your_location = $('#your_location').get(0);

  if (your_location) {
    var autocomplete = new google.maps.places.Autocomplete(your_location, { types: ['geocode'] });
    // google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(your_location, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});



