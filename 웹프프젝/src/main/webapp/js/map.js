var initialView;

window.initMap = function () {
  initialView = new google.maps.LatLng(37.558339, 126.997957);

  const map = new google.maps.Map(document.getElementById("map"), {
    center: initialView,
    zoom:17,
    disableDefaultUI: true,
    zoomControl: false,
    scaleControl: false,
  });
 
  const places = [
    { label: "M", name: "mono mansion", lat : 37.561003, lng: 126.998082 },
    { label: "1", name: "1percent", lat : 37.556991, lng: 126.999536 },
  ];

  const bounds = new google.maps.LatLngBounds();
  const infowindow = new google.maps.InfoWindow();
  const markers = {};

  places.forEach(({ label, name, lat, lng }) => {
    const marker = new google.maps.Marker({
      position: { lat, lng },
      label,
      map,
    });
    bounds.extend(marker.position);
    markers[name] = marker;

    marker.addListener("click", () => {
      map.panTo(marker.position);
      infowindow.setContent(name);
      infowindow.open({
        anchor: marker,
        map,
      });
    });
  });

  map.fitBounds(bounds);

  document.getElementsByName('mono mansion')[0].addEventListener('click', function(){
    google.maps.event.trigger(markers['mono mansion'], 'click');
    map.setZoom(20);
    document.getElementById("selectedPlace").value = 'mono mansion';
  });

  document.getElementsByName('1percent')[0].addEventListener('click', function(){
    google.maps.event.trigger(markers['1percent'], 'click');
    map.setZoom(20);
    document.getElementById("selectedPlace").value = '1percent';
  });

  document.getElementsByName('reset')[0].addEventListener('click', function(){
    initMap();
  });
};
