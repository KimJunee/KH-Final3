/**
 * Interactive map
 * @requires https://github.com/Leaflet/Leaflet
*/

const interactiveMap = (() => {

  let mapList = document.querySelectorAll('.interactive-map');
  
  if (mapList.length === 0) return;

  for (let i = 0; i < mapList.length; i++) {

    let mapOptions = mapList[i].dataset.mapOptions,
        mapOptionsExternal = mapList[i].dataset.mapOptionsJson,
        map;
    
    // Map options: Inline JSON data
    if (mapOptions && mapOptions !== '') {

      let mapOptionsObj = JSON.parse(mapOptions),
          mapLayer = mapOptionsObj.mapLayer || 'https://api.maptiler.com/maps/voyager/{z}/{x}/{y}.png?key=5vRQzd34MMsINEyeKPIs',
          mapCoordinates = mapOptionsObj.coordinates ? mapOptionsObj.coordinates : [0, 0],
          mapZoom = mapOptionsObj.zoom || 1,
          scrollWheelZoom = mapOptionsObj.scrollWheelZoom === false ? false : true,
          markers = mapOptionsObj.markers;
      
      // Map setup
      map = L.map(mapList[i], {
        scrollWheelZoom: scrollWheelZoom
      }).setView(mapCoordinates, mapZoom);

      // Tile layer
      L.tileLayer(mapLayer, {
        tileSize: 512,
        zoomOffset: -1,
        minZoom: 1,
        attribution: "\u003ca href=\"https://www.maptiler.com/copyright/\" target=\"_blank\"\u003e\u0026copy; MapTiler\u003c/a\u003e \u003ca href=\"https://www.openstreetmap.org/copyright\" target=\"_blank\"\u003e\u0026copy; OpenStreetMap contributors\u003c/a\u003e",
        crossOrigin: true
      }).addTo(map);
      
      // Markers
      if (markers) {
        for (var n = 0; n < markers.length; n++) {

          let iconUrl = markers[n].iconUrl,
              iconClass = markers[n].className,
              markerIcon = L.icon({
                iconUrl: iconUrl || '../img/map/marker-icon.png',
                iconSize: [25, 39],
                iconAnchor: [12, 39],
                shadowUrl: '../img/map/marker-shadow.png',
                shadowSize: [41, 41],
                shadowAnchor: [13, 41],
                popupAnchor: [1, -28],
                className: iconClass
              }),
              popup = markers[n].popup;

          let marker = L.marker(markers[n].coordinates, {
            icon: markerIcon
          }).addTo(map);

          if (popup) {
            marker.bindPopup(popup);
          }
        }
      }


    // Map options: External JSON file
    } else if (mapOptionsExternal && mapOptionsExternal !== '') {
      fetch(mapOptionsExternal)
      .then(response => response.json())
      .then(data => {

        let mapLayer = data.mapLayer || 'https://api.maptiler.com/maps/voyager/{z}/{x}/{y}.png?key=5vRQzd34MMsINEyeKPIs',
        mapCoordinates = data.coordinates ? data.coordinates : [0, 0],
        mapZoom = data.zoom || 1,
        scrollWheelZoom = data.scrollWheelZoom === false ? false : true,
        markers = data.markers;
        
        // Map setup
        map = L.map(mapList[i], {
          scrollWheelZoom: scrollWheelZoom
        }).setView(mapCoordinates, mapZoom);

        // Tile layer
        L.tileLayer(mapLayer, {
          tileSize: 512,
          zoomOffset: -1,
          minZoom: 1,
          attribution: "\u003ca href=\"https://www.maptiler.com/copyright/\" target=\"_blank\"\u003e\u0026copy; MapTiler\u003c/a\u003e \u003ca href=\"https://www.openstreetmap.org/copyright\" target=\"_blank\"\u003e\u0026copy; OpenStreetMap contributors\u003c/a\u003e",
          crossOrigin: true
        }).addTo(map);

        // Markers
        if (markers) {
          for (var n = 0; n < markers.length; n++) {

            let iconUrl = markers[n].iconUrl,
                iconClass = markers[n].className,
                markerIcon = L.icon({
                  iconUrl: iconUrl || '../img/map/marker-icon.png',
                  iconSize: [25, 39],
                  iconAnchor: [12, 39],
                  shadowUrl: '../img/map/marker-shadow.png',
                  shadowSize: [41, 41],
                  shadowAnchor: [13, 41],
                  popupAnchor: [1, -28],
                  className: iconClass
                }),
                popup = markers[n].popup;

            let marker = L.marker(markers[n].coordinates, {
              icon: markerIcon
            }).addTo(map);

            if (popup) {
              marker.bindPopup(popup);
            }
          }
        }
    });


    // Map option: No options provided
    } else {
      map = L.map(mapList[i]).setView([0, 0], 1);
  
      L.tileLayer('https://api.maptiler.com/maps/voyager/{z}/{x}/{y}.png?key=5vRQzd34MMsINEyeKPIs', {
        tileSize: 512,
        zoomOffset: -1,
        minZoom: 1,
        attribution: "\u003ca href=\"https://www.maptiler.com/copyright/\" target=\"_blank\"\u003e\u0026copy; MapTiler\u003c/a\u003e \u003ca href=\"https://www.openstreetmap.org/copyright\" target=\"_blank\"\u003e\u0026copy; OpenStreetMap contributors\u003c/a\u003e",
        crossOrigin: true
      }).addTo(map);
    }
  }

})();

export default interactiveMap;
