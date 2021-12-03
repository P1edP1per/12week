import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latlng;

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  // Almaty city for zoom
  late double latitude = 43.222015;
  late double longitude = 76.851250;
  List<Marker> markers = [];
  Size? size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        width: size!.width,
        child: FlutterMap(
          options: MapOptions(
            center: latlng.LatLng(latitude, longitude),
            zoom: 14.0,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate: 'https://{s}.maps.2gis.com/tiles?x={x}&y={y}&z={z}',
              subdomains: ['tile0', 'tile1', 'tile2', 'tile3'],
            ),
            MarkerLayerOptions(
              markers: [
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: latlng.LatLng(43.313313, 76.875570),
                  builder: (ctx) => Container(
                    child: Icon(
                      Icons.person_sharp,
                      color: Color(0xff47536D),
                    ),
                  ),
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: latlng.LatLng(43.242827, 76.864050),
                  builder: (ctx) => Container(
                    child: Icon(
                      Icons.person_sharp,
                      color: Color(0xff47536D),
                    ),
                  ),
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: latlng.LatLng(43.223754, 76.914187),
                  builder: (ctx) => Container(
                    child: Icon(
                      Icons.person_sharp,
                      color: Color(0xff47536D),
                    ),
                  ),
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: latlng.LatLng(43.235073, 76.909762),
                  builder: (ctx) => Container(
                    child: Icon(
                      Icons.person_sharp,
                      color: Color(0xff47536D),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
