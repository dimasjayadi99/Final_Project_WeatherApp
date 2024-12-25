import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:latlong2/latlong.dart';

class EarthQuakeMap extends StatelessWidget {
  final double lintang;
  final double bujur;

  const EarthQuakeMap({super.key, required this.lintang, required this.bujur});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: LatLng(lintang, bujur),
        initialCameraFit: CameraFit.bounds(
          bounds: LatLngBounds.fromPoints([
            const LatLng(-11.0, 94.0),
            const LatLng(6.0, 141.0),
          ]),
          minZoom: 5,
          padding: const EdgeInsets.all(50.0),
        ),
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        PopupMarkerLayer(
          options: PopupMarkerLayerOptions(
            markers: [
              Marker(
                width: 20,
                height: 20,
                point: LatLng(lintang, bujur),
                child: const Icon(
                  Icons.circle,
                  size: 20,
                  color: Colors.red,
                ),
              ),
            ],
            popupDisplayOptions: PopupDisplayOptions(
              builder: (BuildContext context, Marker marker) => const Text(
                'Pusat Gempa',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
