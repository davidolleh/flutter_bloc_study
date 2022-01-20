import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class UserLocationOptions extends LayerOptions {
  BuildContext context;
  List<Marker?> markers;
  MapController? mapController;

  Widget? markerWidget;
  bool updateMapLocationOnPositionChange;
  bool showMoveToCurrentLocationFloatingActionButton;
  bool zoomToCurrentLocationOnLoad;
  Widget? moveToCurrentLocationFloatingActionButton;

  void Function(LatLng location, double? speed)? onLocationUpdate;
  Function()? onTapFAB;

  double fabBottom;
  double fabRight;
  double fabHeight;
  double fabWidth;

  bool verbose;
  bool showHeading;

  double defaultZoom;

  bool locationUpdateInBackground;
  int locationUpdateIntervalMs;

  UserLocationOptions(
      {required this.context,
      required this.markers,
      this.mapController,
      this.markerWidget,
      this.onLocationUpdate,
      this.onTapFAB,
      this.updateMapLocationOnPositionChange = true,
      this.showMoveToCurrentLocationFloatingActionButton = true,
      this.moveToCurrentLocationFloatingActionButton,
      this.verbose = false,
      this.fabBottom = 20,
      this.fabHeight = 40,
      this.fabRight = 20,
      this.fabWidth = 40,
      this.defaultZoom = 15,
      this.zoomToCurrentLocationOnLoad = false,
      this.showHeading = true,
      this.locationUpdateInBackground = true,
      this.locationUpdateIntervalMs = 1000});
}
