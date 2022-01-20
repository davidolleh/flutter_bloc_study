import 'package:flutter/material.dart';

class MapPluginLayer extends StatefulWidget {
  const MapPluginLayer({Key? key}) : super(key: key);

  @override
  _MapPluginLayerState createState() => _MapPluginLayerState();
}

class _MapPluginLayerState extends State<MapPluginLayer> with WidgetsBindingObserver{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance!.removeObserver(this);
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
