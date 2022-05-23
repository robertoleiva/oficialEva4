import 'package:eva4/app/utils/map_style.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PrincipalControler {
  Map<MarkerId, Marker> _marcadores = {
    MarkerId('1'): Marker(
        markerId: MarkerId('1'),
        position: LatLng(13.6993647, -89.2020503),
        infoWindow: InfoWindow(
            title: 'Salvador del mundo',
            snippet: 'Sucursal en la ciudad de San Salvador'),
        icon: BitmapDescriptor.defaultMarker),
    MarkerId('2'): Marker(
        markerId: MarkerId('2'),
        position: LatLng(13.7034392, -89.2318932),
        infoWindow: InfoWindow(
            title: 'Arce-SS',
            snippet: 'Sucursal en la ciudad de San Salvador'),
        icon: BitmapDescriptor.defaultMarker),
    MarkerId('3'): Marker(
        markerId: MarkerId('3'),
        position: LatLng(13.7025068, -89.1528966),
        infoWindow: InfoWindow(
            title: 'Soyapango',
            snippet: 'Sucursal Centro en la ciudad de Soyapango'),
        icon: BitmapDescriptor.defaultMarker),
    MarkerId('4'): Marker(
        markerId: MarkerId('4'),
        position: LatLng(13.6858961, -89.1892457),
        infoWindow: InfoWindow(
            title: 'San jacinto',
            snippet: 'Sucursal en la ciudad de San Jacinto'),
        icon: BitmapDescriptor.defaultMarker)
  };
  final initialCameraPosition =
      const CameraPosition(target: LatLng(13.7496798, -89.4906962), zoom: 7);
  Set<Marker> get marcadores => _marcadores.values.toSet();

  PrincipalControler();

  void onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(MapStyleRender);
  }
}