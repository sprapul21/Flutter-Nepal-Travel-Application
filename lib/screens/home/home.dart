// import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:flutter_app/admin/adminlist.dart';
import 'package:flutter_app/admin/adminpannel.dart';
import 'package:flutter_app/screens/home/profilepage.dart';
import 'package:flutter_app/services/auth.dart';
import 'dart:ui';
import 'package:flutter_app/screens/home/recommendation_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_gradient_text/easy_gradient_text.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/screens/home/map.dart';
import 'MapApp.dart';
import 'bhaktapurplaces.dart';
import 'places.dart';
import 'sliver_chandragiri.dart';
import 'map_bhaktapur.dart';
import 'weather.dart';
import 'calendar.dart';

// design for list for Places near you tab
Widget listItem(BuildContext context, int index) {
  return Card(
      child: Container(
    width: 150,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage(nearyouplaces[index].image),
          fit: BoxFit.cover,
        )),
    child: Container(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.black54,
        child: Text(
          nearyouplaces[index].name,
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //for indicator of slider in home page

  //for route in navigation bar
  int selectedIndex = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Places(),
    Mapapp(),
    ProfileScreen(),
  ];

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  //for Auth service for loging out

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: Colors.white.withOpacity(0.7),
      statusBarBrightness: Brightness.light, // status bar color
    ));
    return Scaffold(
      backgroundColor: Color(0xffd8ecf2),
      //navigation bar
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        color: Colors.white,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.decelerate,
        animationDuration: Duration(milliseconds: 500),
        items: <Widget>[
          Icon(
            Icons.home_sharp,
            size: 30,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.landscape,
            size: 30,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.map,
            size: 30,
            color: Color(0xff30ab9c),
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.pinkAccent,
          ),
        ],
        onTap: _onItemSelected,
        //(index) {
        //   // if (index ==2) {
        //   //   Navigator.of(context)
        //   //       .push(MaterialPageRoute(builder: (context) => Flight()));
        //   // }
        //   // if (index == 4) {
        //   //   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){return ProfileScreen();}));
        //   // };

        // },
      ),
      body: _widgetOptions[_selectedIndex],
    );
  }
}

class Home extends StatelessWidget {
  final PageController _controller = PageController();
  final AuthService _auth = new AuthService();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 25),
            padding: EdgeInsets.only(bottom: 15),
            alignment: Alignment.topCenter,
            width: size.width,
            height: 170,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(5, 6),
                bottomRight: Radius.elliptical(5, 6),
              ),
              image: DecorationImage(
                image: AssetImage('assets/nepal.jpg'),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.1), BlendMode.saturation),
              ),
            ),
            child: Stack(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()),
                        );
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff8bd6e8),
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 18, top: 25),
                  child: GradientText(
                    text: 'Nepal Travel',
                    colors: <Color>[
                      Colors.black,
                      Colors.blueAccent,
                      Colors.black,
                    ],
                    style: TextStyle(fontSize: 27.0),
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 10, left: 20),
            child: GradientText(
              text: 'Popular Travel Places ',
              colors: <Color>[
                Colors.blue,
                Colors.blue,
                Colors.blue,
              ],
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),

          //horizontal pages begins
          Container(
            height: 165,
            // margin: EdgeInsets.only(top: 110),
            child: PageView(
              physics: BouncingScrollPhysics(),
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                recommendations.length,
                (int index) => Container(
                  margin: EdgeInsets.only(right: 20, top: 10, left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.6),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(recommendations[index].image),
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        bottom: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14.8),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaY: 1.6,
                              sigmaX: 1.6,
                            ),
                            child: Container(
                              height: 30,
                              width: 320,
                              padding: EdgeInsets.only(right: 5),
                              alignment: Alignment.center,
                              child: Row(children: <Widget>[
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  recommendations[index].name,
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white70,
                                      fontSize: 20),
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
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: recommendationsData.length,
                    effect: ExpandingDotsEffect(
                      dotHeight: 7,
                      dotWidth: 7,
                      dotColor: Colors.blueGrey,
                      activeDotColor: Colors.blueAccent,
                    ),
                  ),
                ),
              )
            ],
          ),

          Container(
              color: Colors.white12,
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: new Text('Heart of Nepal Kathmandu',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.blue,
                  ))),

          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Kathmanduplaces()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 5),
              height: 120,
              child: ListView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemCount: nearyouplaces.length,
                itemBuilder: (BuildContext context, int index) {
                  return listItem(context, index);
                },
              ),
            ),
          ),

          Container(
            color: Colors.white12,
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: new Text(
              'Places to Visit',
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.blue,
              ),
            ),
          ),
          //maps integration
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(bottom: 0),
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width,
            height: 220,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: const Color(0xff7c94b6), width: 7),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(5, 6),
                bottomRight: Radius.elliptical(5, 6),
              ),
            ),
            child: Map(),
          ),
          SizedBox(
            height: 10,
          ),

          Container(
            margin: EdgeInsets.only(top: 10, left: 20),
            child: GradientText(
              text: 'Popular Activities Places ',
              colors: <Color>[
                Colors.blue,
                Colors.blue,
                Colors.blue,
              ],
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),

          //horizontal pages begins
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Adventureplaces()));
            },
            child: Container(
              height: 165,
              // margin: EdgeInsets.only(top: 110),
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  advantures.length,
                  (int index) => Container(
                    margin: EdgeInsets.only(right: 20, top: 10, left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.6),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(advantures[index].image),
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          bottom: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.6,
                                sigmaX: 1.6,
                              ),
                              child: Container(
                                height: 30,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.center,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    advantures[index].name,
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white70,
                                        fontSize: 20),
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
              ),
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
