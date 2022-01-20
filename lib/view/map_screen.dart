import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:geocoding/geocoding.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  latLng.LatLng point = latLng.LatLng(49.5, -0.09);
  var location = [];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            onTap: (tapPosition, latLng.LatLng p) async {
              setState(() {
                point = p;
              });
            },
            center: latLng.LatLng(51.5, -0.09),
            //will allow us to position the center of the map at a certain coordinates
            zoom: 13.0,
          ),
          layers: [
            TileLayerOptions(//지도를 입력하는것
              //타일 즉 지도를 까는 것
              urlTemplate:
                  "https://api.mapbox.com/styles/v1/davidolleh/ckyl278p7599014q8z2xvbmet/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZGF2aWRvbGxlaCIsImEiOiJja3lsMGR5azQwb21tMm9wa2c2Ym1naG1mIn0.mswCBWNxgfEPXY7EW3dbpA",
              additionalOptions: {
                'accessToken':
                    'pk.eyJ1IjoiZGF2aWRvbGxlaCIsImEiOiJja3lsMGR5azQwb21tMm9wa2c2Ym1naG1mIn0.mswCBWNxgfEPXY7EW3dbpA',
                'id': 'mapbox.mapbox-streets-v8' //id tell 어떤 데이터를 보여줄지 알려줄 것이다
              },
            ),
            MarkerLayerOptions(markers: [//여기는 말그래도 점을 찍어주는 것
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
              Card(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.location_on_outlined),
                    hintText: "Search for Location",
                    contentPadding: EdgeInsets.all(16.0),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("", style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
