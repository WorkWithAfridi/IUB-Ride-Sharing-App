import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMapsWidget extends StatefulWidget {
  @override
  _CustomGoogleMapsWidgetState createState() => _CustomGoogleMapsWidgetState();
}

class _CustomGoogleMapsWidgetState extends State<CustomGoogleMapsWidget> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(23.745022, 90.4161212),
    zoom: 13,
  );

  late GoogleMapController _googleMapController;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GoogleMap(
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          initialCameraPosition: _initialCameraPosition,
          onMapCreated: (controller) => _googleMapController = controller,
          trafficEnabled: true,
          buildingsEnabled: true,
          mapType: MapType.terrain,
          myLocationEnabled: true,
        )
      ],
    );
  }
}
