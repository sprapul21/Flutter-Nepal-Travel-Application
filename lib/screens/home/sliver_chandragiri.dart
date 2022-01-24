import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/map_bhaktapur.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui';

class Sliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.blue[100],
          expandedHeight: 300,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              'https://www.pigeontravels.com/wp-content/uploads/2019/06/Chandragiri-Temple.jpg',
              fit: BoxFit.cover,
            ),
            title: Text(
              'Chandragiri',
              style: TextStyle(fontSize: 24),
            ),
            centerTitle: true,
          ),
          leading: Icon(Icons.arrow_back),
          actions: [
            IconButton(
              icon: Icon(
                Icons.map,
              ),
              iconSize: 40,
              color: Colors.white,
              splashColor: Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapBhakt()),
                );
              },
            ),
            SizedBox(
              width: 12,
            )
          ],
        ),
        buildImages(),
        mapand(),
        hotels(),
        buildTips(),
      ],
    );
  }

  Widget buildImages() => SliverToBoxAdapter(
        child: Container(
          child: Text(
            'A UNESCO World Heritage Site and one of the largest stupas in the world, the Boudhanath Stupa in Kathmandu is a significant place in Buddhism and architecture, both. Located on an ancient trade route that entered Kathmandu from Tibet.  The place has seen many traders and travellers offering prayers to their lord here, as the Stupa is considered to be the tomb of the remains of Kassapa Buddha. With a lot of legends attached to the place, it is one of the best places to visit in Nepal and easily deserves to be called so.  Location- On the outskirts of Kathmandu, Nepal',
            style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
          ),
          color: Colors.white54,
          width: 300,
        ),
      );
}

Widget buildTips() => SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              alignment: Alignment.center,
              color: Colors.lightBlueAccent,
              child: Text(
                'Tips',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 50,
                ),
              )),
          Container(
            alignment: Alignment.center,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.blue[100],
            ),
            child: Text(
              "Do not trek alone. There have been numerous disappearances of solo trekkers in recent years. Always hire a guide or trek with other people. There are online forums where  travelers can look for fellow-trekkers. This applies to everyone but especially women that are travelling single – they seem to more vulnerable. Always communicate your travel plans to your next of kin. ",
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.blue[200],
            ),
            child: Text(
              "Food safety - Avoid water that is not bottled or boiled. Avoid raw vegetables and pre-cut fruit as much as possible. ",
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.blue[300],
            ),
            child: Text(
              "Even though Nepal is known for its pristine environment and beauty – not the highways and major city streets. They are crowded with traffic, full of smoke and bumpy and dusty. Hence travelling on a bicycle or a motorbike for the most part is not advisable. There are some off-road mountain bike trails that are ok to do.",
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
            ),
            child: Text(
              "Do not give money to beggars that you see on the streets. Even though they look pitiful, your giving away of money encourages them only to beg for more. If you really care support one of many charity organizations working in Nepal .",
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Text(
              "Be sure to exchange back all the Nepalese currencies before you leave. They are not accepted (or even exchanged for that matter) outside of Nepal . Besides, taking currency out of the country is against the law.",
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
            ),
            child: Text(
              "Do not fully rely on schedules and times that are committed to you whether in verbal or written while you are in Nepal . They may not commence in time as stated or committed and may end up disrupting all your subsequent schedule. Have time buffer as much as you can between your major plans and activities, especially if you have a hard stop date that you need to fly out by.",
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 80,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: Text(
              "Stay away from dance bars in KTM and PKR. These are tourist traps where they scam you on buying alcohol and food at much inflated prices. Some of these places have a history of intimidation and violence.",
            ),
          ),
        ],
      ),
    );

Widget mapand() => SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 0),
            alignment: Alignment.topCenter,
            width: 500,
            height: 220,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: const Color(0xff7c94b6), width: 7),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(5, 6),
                bottomRight: Radius.elliptical(5, 6),
              ),
            ),
            child: Mapchand(),
          ),
        ],
      ),
    );

class Mapchand extends StatefulWidget {
  @override
  _MapchandState createState() => _MapchandState();
}

class _MapchandState extends State<Mapchand> {
  Set<Marker> _markers = {};
  BitmapDescriptor mapMarker;

  void _onMapCreated(GoogleMapController) {
    setState(() {
      _markers.add(
        Marker(
          icon: mapMarker,
          markerId: MarkerId('id-2'),
          position: LatLng(27.70169, 85.3206),
          infoWindow: InfoWindow(title: 'Chandragiri', snippet: 'Kathmandu'),
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
          CameraPosition(target: LatLng(27.70169, 85.3206), zoom: 11.8),
    ));
  }
}

Widget hotels() => SliverToBoxAdapter(
        child: Container(
      child: GestureDetector(
        onTap: () {
          BuildContext context;
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => MapBhakt(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            border: Border.all(color: const Color(0xff7c94b6), width: 10),
          ),
          child: Text(
            'View Hotels Near By',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 54,
            ),
          ),
        ),
      ),
    ));

Widget mapicon() => SliverToBoxAdapter(
        child: Container(
      child: GestureDetector(
        onTap: () {
          BuildContext context;
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => MapBhakt(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            border: Border.all(color: const Color(0xff7c94b6), width: 10),
          ),
          child: Text(
            'View Hotels Near By',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 54,
            ),
          ),
        ),
      ),
    ));
