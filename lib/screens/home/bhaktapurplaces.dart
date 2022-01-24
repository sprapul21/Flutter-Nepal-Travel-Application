import 'package:flutter/material.dart';
import 'package:flutter_app/HotelScreens/HotelCheckoutScreen.dart';
import 'package:flutter_app/HotelScreens/HotelPage.dart';
import 'package:flutter_app/models/bhaktapur.dart';
import 'package:flutter_app/screens/home/travel_list.dart';
import 'package:flutter_app/services/database.dart';
import 'package:provider/provider.dart';

class Bhaktapurplaces extends StatefulWidget {
  @override
  _BhaktapurplacesState createState() => _BhaktapurplacesState();
}

class _BhaktapurplacesState extends State<Bhaktapurplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Bhaktapur>>.value(
      value: DatabaseService().bhaktapurinfo,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Hotelbhaktapurplaces()));
                },
                icon: Icon(
                  Icons.local_hotel,
                  color: Colors.white,
                ),
                label: Text(
                  'Hotels',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))
          ],
          title: Text('Bhaktapur Places Page'),
        ),
        body: Bhaktapurlist(),
      ),
    );
  }
}

class _showSettingsPanel {}

//kathmandu
class Kathmanduplaces extends StatefulWidget {
  @override
  _KathmanduplacesState createState() => _KathmanduplacesState();
}

class _KathmanduplacesState extends State<Kathmanduplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Kathmandu>>.value(
      value: DatabaseService().kathmanduinfo,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Hotelkathmanduplaces()));
                },
                icon: Icon(
                  Icons.local_hotel,
                  color: Colors.white,
                ),
                label: Text(
                  'Hotels',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))
          ],
          title: Text('Kathmandu Places Page'),
        ),
        body: Kathmandulist(),
      ),
    );
  }
}

class Adventureplaces extends StatefulWidget {
  @override
  _AdventureplacesState createState() => _AdventureplacesState();
}

class _AdventureplacesState extends State<Adventureplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Adventure>>.value(
      value: DatabaseService().adventureinfo,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () => _showSettingsPanel(),
                icon: Icon(Icons.settings),
                label: Text('Setting'))
          ],
          title: Text('Adventure Places Page'),
        ),
        body: Adventurelist(),
      ),
    );
  }
}

//start to copy ..
class Pokharaplaces extends StatefulWidget {
  @override
  _PokharaplacesState createState() => _PokharaplacesState();
}

class _PokharaplacesState extends State<Pokharaplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Pokhara>>.value(
      value: DatabaseService().pokharainfo,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Hotelpokharaplaces()));
                },
                icon: Icon(
                  Icons.local_hotel,
                  color: Colors.white,
                ),
                label: Text(
                  'Hotels',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))
          ],
          title: Text('Pokhara Places Page'),
        ),
        body: Pokharalist(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Lalitpurplaces extends StatefulWidget {
  @override
  _LalitpurplacesState createState() => _LalitpurplacesState();
}

class _LalitpurplacesState extends State<Lalitpurplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Lalitpur>>.value(
      value: DatabaseService().lalitpurinfo,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Hotellalitpurplaces()));
                },
                icon: Icon(
                  Icons.local_hotel,
                  color: Colors.white,
                ),
                label: Text(
                  'Hotels',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))
          ],
          title: Text('Lalitpur Places Page'),
        ),
        body: Lalitpurlist(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Janakpurplaces extends StatefulWidget {
  @override
  _JanakpurplacesState createState() => _JanakpurplacesState();
}

class _JanakpurplacesState extends State<Janakpurplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Janakpur>>.value(
      value: DatabaseService().janakpurinfo,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Hoteljanakpurplaces()));
                },
                icon: Icon(
                  Icons.local_hotel,
                  color: Colors.white,
                ),
                label: Text(
                  'Hotels',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))
          ],
          title: Text('Janakpur Places Page'),
        ),
        body: Janakpurlist(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Lumbiniplaces extends StatefulWidget {
  @override
  _LumbiniplacesState createState() => _LumbiniplacesState();
}

class _LumbiniplacesState extends State<Lumbiniplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Lumbini>>.value(
      value: DatabaseService().lumbiniinfo,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Hotellumbiniplaces()));
                },
                icon: Icon(
                  Icons.local_hotel,
                  color: Colors.white,
                ),
                label: Text(
                  'Hotels',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))
          ],
          title: Text('Lumbini Places Page'),
        ),
        body: Lumbinilist(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Solukhumbhuplaces extends StatefulWidget {
  @override
  _SolukhumbhuplacesState createState() => _SolukhumbhuplacesState();
}

class _SolukhumbhuplacesState extends State<Solukhumbhuplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Solukhumbhu>>.value(
      value: DatabaseService().solukhumbhuinfo,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Hotelothersplaces()));
                },
                icon: Icon(
                  Icons.local_hotel,
                  color: Colors.white,
                ),
                label: Text(
                  'Hotels',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))
          ],
          title: Text('Others  Places Page'),
        ),
        body: Solukhumbhulist(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Hotelbhaktapurplaces extends StatefulWidget {
  @override
  _HotelbhaktapurplacesState createState() => _HotelbhaktapurplacesState();
}

class _HotelbhaktapurplacesState extends State<Hotelbhaktapurplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hotelbhaktapur>>.value(
      value: DatabaseService().hotelbhaktapurinfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Hotels in Bhaktapur'),
        ),
        body: Bhaktapurhotellist(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Hotelbhaktapurplaces1 extends StatefulWidget {
  @override
  _Hotelbhaktapurplaces1State createState() => _Hotelbhaktapurplaces1State();
}

class _Hotelbhaktapurplaces1State extends State<Hotelbhaktapurplaces1> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hotelbhaktapur>>.value(
      value: DatabaseService().hotelbhaktapurinfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Hotels in Bhaktapur'),
        ),
        body: Bhaktapurhotellist1(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Hotelkathmanduplaces extends StatefulWidget {
  @override
  _HotelkathmanduplacesState createState() => _HotelkathmanduplacesState();
}

class _HotelkathmanduplacesState extends State<Hotelkathmanduplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hotelkathmandu>>.value(
      value: DatabaseService().hotelkathmanduinfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Hotels in Kathmandu'),
        ),
        body: Kathmanduhotellist(),
      ),
    );
  }
}

// finsh copying

//start to copy ..
class Hotelkathmanduplaces1 extends StatefulWidget {
  @override
  _Hotelkathmanduplaces1State createState() => _Hotelkathmanduplaces1State();
}

class _Hotelkathmanduplaces1State extends State<Hotelkathmanduplaces1> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hotelkathmandu>>.value(
      value: DatabaseService().hotelkathmanduinfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Hotels in Kathmandu'),
        ),
        body: Kathmanduhotellist1(),
      ),
    );
  }
}

// finsh copying

//start to copy ..
class Hotellalitpurplaces extends StatefulWidget {
  @override
  _HotellalitpurplacesState createState() => _HotellalitpurplacesState();
}

class _HotellalitpurplacesState extends State<Hotellalitpurplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hotellalitpur>>.value(
      value: DatabaseService().hotellalitpurinfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Hotels in Lalitpur'),
        ),
        body: Lalitpurhotellist(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Hotellalitpurplaces1 extends StatefulWidget {
  @override
  _Hotellalitpurplaces1State createState() => _Hotellalitpurplaces1State();
}

class _Hotellalitpurplaces1State extends State<Hotellalitpurplaces1> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hotellalitpur>>.value(
      value: DatabaseService().hotellalitpurinfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Hotels in Lalitpur'),
        ),
        body: Lalitpurhotellist1(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Hotelpokharaplaces extends StatefulWidget {
  @override
  _HotelpokharaplacesState createState() => _HotelpokharaplacesState();
}

class _HotelpokharaplacesState extends State<Hotelpokharaplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hotelpokhara>>.value(
      value: DatabaseService().hotelpokharainfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Hotels in Pokhara'),
        ),
        body: Pokharahotellist(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Hotelpokharaplaces1 extends StatefulWidget {
  @override
  _Hotelpokharaplaces1State createState() => _Hotelpokharaplaces1State();
}

class _Hotelpokharaplaces1State extends State<Hotelpokharaplaces1> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hotelpokhara>>.value(
      value: DatabaseService().hotelpokharainfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Hotels in Pokhara'),
        ),
        body: Pokharahotellist1(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Hoteljanakpurplaces extends StatefulWidget {
  @override
  _HoteljanakpurplacesState createState() => _HoteljanakpurplacesState();
}

class _HoteljanakpurplacesState extends State<Hoteljanakpurplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hoteljanakpur>>.value(
      value: DatabaseService().hoteljanakpurinfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Hotels in Janakpur'),
        ),
        body: Janakpurhotellist(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Hoteljanakpurplaces1 extends StatefulWidget {
  @override
  _Hoteljanakpurplaces1State createState() => _Hoteljanakpurplaces1State();
}

class _Hoteljanakpurplaces1State extends State<Hoteljanakpurplaces1> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hoteljanakpur>>.value(
      value: DatabaseService().hoteljanakpurinfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Hotels in Janakpur'),
        ),
        body: Janakpurhotellist1(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Hotellumbiniplaces extends StatefulWidget {
  @override
  _HotellumbiniplacesState createState() => _HotellumbiniplacesState();
}

class _HotellumbiniplacesState extends State<Hotellumbiniplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hotellumbini>>.value(
      value: DatabaseService().hotellumbiniinfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Hotels in Lumbini'),
        ),
        body: Lumbinihotellist(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Hotellumbiniplaces1 extends StatefulWidget {
  @override
  _Hotellumbiniplaces1State createState() => _Hotellumbiniplaces1State();
}

class _Hotellumbiniplaces1State extends State<Hotellumbiniplaces1> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hotellumbini>>.value(
      value: DatabaseService().hotellumbiniinfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Hotels in Lumbini'),
        ),
        body: Lumbinihotellist1(),
      ),
    );
  }
}
// finsh copying

//start to copy ..
class Hotelothersplaces extends StatefulWidget {
  @override
  _HotelothersplacesState createState() => _HotelothersplacesState();
}

class _HotelothersplacesState extends State<Hotelothersplaces> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hotelothers>>.value(
      value: DatabaseService().hotelothersinfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Hotels in Other Places'),
        ),
        body: Othershotellist(),
      ),
    );
  }
}

// finsh copying
//start to copy ..
class Hotelothersplaces1 extends StatefulWidget {
  @override
  _Hotelothersplaces1State createState() => _Hotelothersplaces1State();
}

class _Hotelothersplaces1State extends State<Hotelothersplaces1> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hotelothers>>.value(
      value: DatabaseService().hotelothersinfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Hotels in Other Places'),
        ),
        body: Othershotellist1(),
      ),
    );
  }
}
// finsh copying
