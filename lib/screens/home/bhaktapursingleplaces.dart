import 'package:flutter/material.dart';
import 'package:flutter_app/models/bhaktapur.dart';
import 'package:flutter_app/screens/home/map_bhaktapur.dart';
import 'package:flutter_app/screens/home/sliver_chandragiri.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui';

class Bhaktapursingleplaces extends StatefulWidget {
  final Bhaktapur bhaktapur;
  Bhaktapursingleplaces({this.bhaktapur});
  @override
  _BhaktapursingleplacesState createState() => _BhaktapursingleplacesState();
}

class _BhaktapursingleplacesState extends State<Bhaktapursingleplaces> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: 300,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              widget.bhaktapur.img,
              fit: BoxFit.cover,
            ),
            title: Text(
              widget.bhaktapur.name,
              style: TextStyle(fontSize: 24),
            ),
            centerTitle: true,
          ),
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
      ],
    );
  }

  Widget buildImages() => SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            widget.bhaktapur.info,
            textAlign: TextAlign.justify,
            style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black54,
                decoration: TextDecoration.none),
          ),
          color: Colors.lightBlue[100],
          width: 300,
        ),
      );
}

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
              fontSize: 44,
              color: Colors.black45,
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

//kathmandu
//

class Kathmandusingleplaces extends StatefulWidget {
  final Kathmandu kathmandu;
  Kathmandusingleplaces({this.kathmandu});
  @override
  _KathmandusingleplacesState createState() => _KathmandusingleplacesState();
}

class _KathmandusingleplacesState extends State<Kathmandusingleplaces> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: 300,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              widget.kathmandu.img,
              fit: BoxFit.cover,
            ),
            title: Text(
              widget.kathmandu.name,
              style: TextStyle(fontSize: 24),
            ),
            centerTitle: true,
          ),
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
      ],
    );
  }

  Widget buildImages() => SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            widget.kathmandu.info,
            textAlign: TextAlign.justify,
            style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black54,
                decoration: TextDecoration.none),
          ),
          color: Colors.lightBlue[100],
          width: 300,
        ),
      );
}

//adventure

class Adventuresingleplaces extends StatefulWidget {
  final Adventure adventure;
  Adventuresingleplaces({this.adventure});
  @override
  _AdventuresingleplacesState createState() => _AdventuresingleplacesState();
}

class _AdventuresingleplacesState extends State<Adventuresingleplaces> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: 300,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              widget.adventure.img,
              fit: BoxFit.cover,
            ),
            title: Text(
              widget.adventure.name,
              style: TextStyle(fontSize: 24),
            ),
            centerTitle: true,
          ),
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
      ],
    );
  }

  Widget buildImages() => SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            widget.adventure.info,
            textAlign: TextAlign.justify,
            style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black54,
                decoration: TextDecoration.none),
          ),
          color: Colors.lightBlue[100],
          width: 300,
        ),
      );
}

//janakpur

class Janakpursingleplaces extends StatefulWidget {
  final Janakpur janakpur;
  Janakpursingleplaces({this.janakpur});
  @override
  _JanakpursingleplacesState createState() => _JanakpursingleplacesState();
}

class _JanakpursingleplacesState extends State<Janakpursingleplaces> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: 300,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              widget.janakpur.img,
              fit: BoxFit.cover,
            ),
            title: Text(
              widget.janakpur.name,
              style: TextStyle(fontSize: 24),
            ),
            centerTitle: true,
          ),
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
      ],
    );
  }

  Widget buildImages() => SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            widget.janakpur.info,
            textAlign: TextAlign.justify,
            style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black54,
                decoration: TextDecoration.none),
          ),
          color: Colors.lightBlue[100],
          width: 300,
        ),
      );
}

//lumbini

class Lumbinisingleplaces extends StatefulWidget {
  final Lumbini lumbini;
  Lumbinisingleplaces({this.lumbini});
  @override
  _LumbinisingleplacesState createState() => _LumbinisingleplacesState();
}

class _LumbinisingleplacesState extends State<Lumbinisingleplaces> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: 300,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              widget.lumbini.img,
              fit: BoxFit.cover,
            ),
            title: Text(
              widget.lumbini.name,
              style: TextStyle(fontSize: 24),
            ),
            centerTitle: true,
          ),
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
      ],
    );
  }

  Widget buildImages() => SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            widget.lumbini.info,
            textAlign: TextAlign.justify,
            style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black54,
                decoration: TextDecoration.none),
          ),
          color: Colors.lightBlue[100],
          width: 300,
        ),
      );
}

//lalitpur

class Lalitpursingleplaces extends StatefulWidget {
  final Lalitpur lalitpur;
  Lalitpursingleplaces({this.lalitpur});
  @override
  _LalitpursingleplacesState createState() => _LalitpursingleplacesState();
}

class _LalitpursingleplacesState extends State<Lalitpursingleplaces> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: 300,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              widget.lalitpur.img,
              fit: BoxFit.cover,
            ),
            title: Text(
              widget.lalitpur.name,
              style: TextStyle(fontSize: 24),
            ),
            centerTitle: true,
          ),
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
      ],
    );
  }

  Widget buildImages() => SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            widget.lalitpur.info,
            textAlign: TextAlign.justify,
            style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black54,
                decoration: TextDecoration.none),
          ),
          color: Colors.lightBlue[100],
          width: 300,
        ),
      );
}

//Others

class Solukhumbhusingleplaces extends StatefulWidget {
  final Solukhumbhu solukhumbhu;
  Solukhumbhusingleplaces({this.solukhumbhu});
  @override
  _SolukhumbhusingleplacesState createState() =>
      _SolukhumbhusingleplacesState();
}

class _SolukhumbhusingleplacesState extends State<Solukhumbhusingleplaces> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: 300,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              widget.solukhumbhu.img,
              fit: BoxFit.cover,
            ),
            title: Text(
              widget.solukhumbhu.name,
              style: TextStyle(fontSize: 24),
            ),
            centerTitle: true,
          ),
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
      ],
    );
  }

  Widget buildImages() => SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            widget.solukhumbhu.info,
            textAlign: TextAlign.justify,
            style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black54,
                decoration: TextDecoration.none),
          ),
          color: Colors.lightBlue[100],
          width: 300,
        ),
      );
}

//Others

class Pokharasingleplaces extends StatefulWidget {
  final Pokhara pokhara;
  Pokharasingleplaces({this.pokhara});
  @override
  _PokharasingleplacesState createState() => _PokharasingleplacesState();
}

class _PokharasingleplacesState extends State<Pokharasingleplaces> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: 300,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              widget.pokhara.img,
              fit: BoxFit.cover,
            ),
            title: Text(
              widget.pokhara.name,
              style: TextStyle(fontSize: 24),
            ),
            centerTitle: true,
          ),
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
      ],
    );
  }

  Widget buildImages() => SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            widget.pokhara.info,
            textAlign: TextAlign.justify,
            style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black54,
                decoration: TextDecoration.none),
          ),
          color: Colors.lightBlue[100],
          width: 300,
        ),
      );
}
