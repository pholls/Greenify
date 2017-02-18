
mapboxgl.accessToken = "<%== ENV['MAPBOX_API_KEY'] %>";
var map = new mapboxgl.Map({
    container: 'map-placeholder', // container id
    // style: 'mapbox://styles/mapbox/streets-v9',
    style: 'mapbox://styles/hidefstatic/cizblvvyn00482roiaujnetzd', //stylesheet location
    center: [-122.3321, 47.6062], // starting position
    zoom: 11 // starting zoom
});
map.addControl(new MapboxGeocoder({
  accessToken: mapboxgl.accessToken
})); //creates search bar
map.addControl(new mapboxgl.GeolocateControl()); //creates 'my location' button
///////////////////////////////////////////////////////////////////////////////
