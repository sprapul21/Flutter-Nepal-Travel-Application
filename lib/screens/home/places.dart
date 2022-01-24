// import 'dart:html';
import 'dart:ui';
import 'package:flutter_app/models/bhaktapur.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_app/services/database.dart';
import 'package:provider/provider.dart';
import 'travel_list.dart';
import 'recommendation_model.dart';
import 'dart:async';
import 'map_bhaktapur.dart';
import 'bhaktapurplaces.dart';

void main() => runApp(new MyApp());

class Places extends StatefulWidget {
  Places({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  Future getcities() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("cities").getDocuments();
    return qn.documents;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Places Page',
        ),
        centerTitle: true,
      ),
      body: Listplaces(),
    );
  }
}

//list for places page

class Listplaces extends StatefulWidget {
  @override
  _ListplacesState createState() => _ListplacesState();
}

class _ListplacesState extends State<Listplaces> {
  _ListplacesState();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: placesData.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => places[index].route));
          },
          child: Card(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(places[index].image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14.8),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaY: 1.8,
                          sigmaX: 1.8,
                        ),
                        child: Container(
                          height: 40,
                          width: 320,
                          padding: EdgeInsets.only(right: 5),
                          alignment: Alignment.topLeft,
                          child: Row(children: <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              places[index].name,
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 30),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

//this is tips page
class Flights extends StatefulWidget {
  @override
  _FlightsState createState() => _FlightsState();
}

class _FlightsState extends State<Flights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tips Page',
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.amber,
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
              color: Colors.lightBlue,
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
              color: Colors.green,
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
  }
}

//this is inside of places page(bhaktapur)
class Bookmark extends StatefulWidget {
  @override
  _BookmarkState createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  final AuthService _auth = new AuthService();
  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: Text('bottom sheet'),
            );
          });
    }

    return StreamProvider<List<Bhaktapur>>.value(
      value: DatabaseService().bhaktapurinfo,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Bookmarks Page'),
        ),
        body: Bhaktapurlist(),
      ),
    );
  }
}

//this is inside of places page(kathmandu)
class Bookmark1 extends StatefulWidget {
  @override
  _Bookmark1State createState() => _Bookmark1State();
}

class _Bookmark1State extends State<Bookmark1> {
  final AuthService _auth = new AuthService();
  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: Text('bottom sheet'),
            );
          });
    }

    return StreamProvider<List<Kathmandu>>.value(
      value: DatabaseService().kathmanduinfo,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () => _showSettingsPanel(),
                icon: Icon(Icons.settings),
                label: Text('Setting'))
          ],
          title: Text('Bookmarks Page'),
        ),
        body: Kathmandulist(),
      ),
    );
  }
}

//this is inside of places page(Adventure)
class Bookmark2 extends StatefulWidget {
  @override
  _Bookmark2State createState() => _Bookmark2State();
}

class _Bookmark2State extends State<Bookmark2> {
  final AuthService _auth = new AuthService();
  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: Text('bottom sheet'),
            );
          });
    }

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
          title: Text('Bookmarks Page'),
        ),
        body: Adventurelist(),
      ),
    );
  }
}

//this is inside of places page(Pokhara)
class Bookmark3 extends StatefulWidget {
  @override
  _Bookmark3State createState() => _Bookmark3State();
}

class _Bookmark3State extends State<Bookmark3> {
  final AuthService _auth = new AuthService();
  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: Text('bottom sheet'),
            );
          });
    }

    return StreamProvider<List<Pokhara>>.value(
      value: DatabaseService().pokharainfo,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () => _showSettingsPanel(),
                icon: Icon(Icons.settings),
                label: Text('Setting'))
          ],
          title: Text('Bookmarks Page'),
        ),
        body: Pokharalist(),
      ),
    );
  }
}

class Trave {
  final String name;
  final String bookmark;
  final String details;
  final String imageurl;

  Trave({
    this.name,
    this.bookmark,
    this.details,
    this.imageurl,
  });
}
