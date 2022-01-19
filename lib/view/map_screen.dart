import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart' as latLng;

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  latLng.LatLng point = latLng.LatLng(49.5, -0.09);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            onTap: (tapPosition ,latLng.LatLng p) {// 누른곳 핀 찍기
              setState(() {
                point = p;
              });
            },
            center: latLng.LatLng(51.5, -0.09),
            //will allow us to position the center of the map at a certain coordinates
            zoom: 13.0,
          ),
          layers: [
            TileLayerOptions(
              //타일 즉 지도를 까는 것
              urlTemplate:
                  "https://api.mapbox.com/styles/v1/davidolleh/ckyl278p7599014q8z2xvbmet/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZGF2aWRvbGxlaCIsImEiOiJja3lsMGR5azQwb21tMm9wa2c2Ym1naG1mIn0.mswCBWNxgfEPXY7EW3dbpA",
              additionalOptions: {
                'accessToken':
                    'pk.eyJ1IjoiZGF2aWRvbGxlaCIsImEiOiJja3lsMGR5azQwb21tMm9wa2c2Ym1naG1mIn0.mswCBWNxgfEPXY7EW3dbpA',
                'id': 'mapbox.mapbox-streets-v8' //id tell 어떤 데이터를 보여줄지 알려줄 것이다
              },
            ),
            MarkerLayerOptions(markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: point,
                  builder: (ctx) => const Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ))
            ]),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 34.0, horizontal: 16.0),
          child: Column(
            children: const [
              Card(la
                child: TextField(),
              )
            ],
          ),
        ),
      ],
    );
  }
}