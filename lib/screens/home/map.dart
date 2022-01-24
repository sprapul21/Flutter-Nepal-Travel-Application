import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  Set<Marker> _markers = {};
  BitmapDescriptor mapMarker;

  // this is for custom marker
  //@override
  //   void initState() {
  //     // TODO: implement initState
  //     super.initState();
  //     setCustomMarkers();
  //   }
  // void setCustomMarkers() async{
  //   mapMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'assets/pin.png');
  // }

  void _onMapCreated(GoogleMapController) {
    setState(() {
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-1'),
          position: LatLng(27.672135, 85.428048),
          infoWindow: InfoWindow(
              title: 'Bhaktapur Durbar Square', snippet: 'Bkahtapur'),
        ),
      );
    });
    setState(() {
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-2'),
          position: LatLng(27.70169, 85.3206),
          infoWindow: InfoWindow(
              title: 'Kathmandu Durbar Square', snippet: 'Kathmandu'),
        ),
      );
    });
    setState(() {
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-3'),
          position: LatLng(27.6726981, 85.3253211),
          infoWindow:
              InfoWindow(title: 'Lalitpur Durbar Square', snippet: 'lalitpur'),
        ),
      );
    });
    setState(() {
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-4'),
          position: LatLng(28.631541, 84.38427),
          infoWindow:
              InfoWindow(title: 'Annapurna Base Camp', snippet: 'Bharatpur'),
        ),
      );
    });
    setState(() {
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-5'),
          position: LatLng(28.1775573754821, 84.094676971436),
          infoWindow: InfoWindow(title: 'Begnas Lake', snippet: 'Pokhara'),
        ),
      );
    });
    setState(() {
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-6'),
          position: LatLng(28.215384, 83.945320),
          infoWindow: InfoWindow(title: 'Phewa Lake', snippet: 'Pokhara'),
        ),
      );
    });
    setState(() {
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-7'),
          position: LatLng(27.583331, 84.5166646),
          infoWindow:
              InfoWindow(title: 'Chitwan National Park', snippet: 'Chitwan'),
        ),
      );
    });
    setState(() {
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-8'),
          position: LatLng(28.083333, 85.416665),
          infoWindow: InfoWindow(title: 'Gosaikunda', snippet: 'Rasuwa'),
        ),
      );
    });
    setState(() {
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-9'),
          position: LatLng(28.083333, 85.416665),
          infoWindow: InfoWindow(title: 'Upper Mustang', snippet: 'Mustang'),
        ),
      );
    });
    setState(() {
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-10'),
          position: LatLng(26.71828, 85.90646),
          infoWindow: InfoWindow(title: 'Janaki Mandir', snippet: 'Janakpur'),
        ),
      );
    });
    setState(() {
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-11'),
          position: LatLng(27.974829434, 86.667830662),
          infoWindow: InfoWindow(
              title: 'Sagarmatha National Park', snippet: 'Sagarmatha'),
        ),
      );
    });
    setState(() {
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-8'),
          position: LatLng(28.683359, 80.608063),
          infoWindow: InfoWindow(title: 'Dhangadi', snippet: 'Kailali'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GoogleMap(
      onMapCreated: _onMapCreated,
      markers: _markers,
      initialCameraPosition:
          CameraPosition(target: LatLng(28.3974, 84.5258), zoom: 5.8),
    ));
  }
}
