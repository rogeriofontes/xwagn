import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LiteMode extends StatefulWidget {
  @override
  _LiteModeState createState() => _LiteModeState();
}

class _LiteModeState extends State<LiteMode> {
  static final LatLng _kMapCenter = LatLng(-20.0197, -48.9194);

  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  late GoogleMapController _controller;

  void onMapCreated(GoogleMapController controller) {
    _controller = controller;
  }

  Set<Marker> _createMarker() {
    return {
      Marker(
        markerId: MarkerId("marker_1"),
        position: _kMapCenter,
      ),
      Marker(
        markerId: MarkerId("marker_2"),
        position: LatLng(-20.0197, -48.9194),
      ),
      Marker(
        markerId: MarkerId("marker_3"),
        position: LatLng(-20.0197, -48.9194),
      ),
      Marker(
        markerId: MarkerId("marker_4"),
        position: _kMapCenter,
      ),
      Marker(
        markerId: MarkerId("marker_5"),
        position: LatLng(-20.0197, -48.9194),
      ),
      Marker(
        markerId: MarkerId("marker_6"),
        position: LatLng(-20.0197, -48.9194),
      ),
      Marker(
        markerId: MarkerId("marker_7"),
        position: LatLng(-20.0197, -48.9194),
      ),
      Marker(
        markerId: MarkerId("marker_8"),
        position: LatLng(-20.0197, -48.9194),
      ),
      Marker(
        markerId: MarkerId("marker_9"),
        position: LatLng(-20.0197, -48.9194),
      ),
      Marker(
        markerId: MarkerId("marker_10"),
        position: LatLng(-20.0197, -48.9194),
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Google Maps Demo'),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(10, (index) {
            return Center(
              child: GoogleMap(
                initialCameraPosition: _kInitialPosition,
                markers: _createMarker(),
                liteModeEnabled: true,
              ),
            );
          }),
        ));
  }
}
