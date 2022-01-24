import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app/HotelScreens/HotelPage.dart';
import 'package:flutter_app/HotelScreens/hoteljanakpur.dart';
import 'package:flutter_app/HotelScreens/hotelkathmandu.dart';
import 'package:flutter_app/HotelScreens/hotellalitpur.dart';
import 'package:flutter_app/HotelScreens/hotellumbini.dart';
import 'package:flutter_app/HotelScreens/hotelothers.dart';
import 'package:flutter_app/HotelScreens/hotelpokhara.dart';
import 'package:flutter_app/adminhotelscreen/bhaktapur.dart';
import 'package:flutter_app/adminhotelscreen/janakpur.dart';
import 'package:flutter_app/adminhotelscreen/kathmadu.dart';
import 'package:flutter_app/adminhotelscreen/lalitpur.dart';
import 'package:flutter_app/adminhotelscreen/lumbini.dart';
import 'package:flutter_app/adminhotelscreen/others.dart';
import 'package:flutter_app/adminhotelscreen/pokhara.dart';
import 'package:flutter_app/models/bhaktapur.dart';
import 'package:flutter_app/screens/home/bhaktapursingleplaces.dart';
import 'package:google_fonts/google_fonts.dart';
import 'travel_list.dart';
import 'package:flutter_app/models/user.dart';
import 'travel_list.dart';
import 'package:flutter_app/screens/home/places.dart';
import 'sliver_chandragiri.dart';
import '';

class TravelTile extends StatelessWidget {
  final Trave travel;
  TravelTile({this.travel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
        child: ListTile(
          title: Text(travel.name),
        ),
      ),
    );
  }
}

class BhaktapurTile extends StatelessWidget {
  final Bhaktapur bhaktapur;
  BhaktapurTile({this.bhaktapur});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Bhaktapursingleplaces(
                        bhaktapur: bhaktapur,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(bhaktapur.img),
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
                                    bhaktapur.name,
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}

class BhaktapurhotelTile extends StatelessWidget {
  final Hotelbhaktapur bhaktapurhotel;
  BhaktapurhotelTile({this.bhaktapurhotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotelScreen(
                        bhaktapurhotel: bhaktapurhotel,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(bhaktapurhotel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.8,
                                sigmaX: 1.8,
                              ),
                              child: Container(
                                height: 60,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.topLeft,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    bhaktapurhotel.name +
                                        "\nRs." +
                                        bhaktapurhotel.price +
                                        " Per Night",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}

class BhaktapurhotelTile1 extends StatelessWidget {
  final Hotelbhaktapur bhaktapurhotel;
  BhaktapurhotelTile1({this.bhaktapurhotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotelScreen1(
                        bhaktapurhotel: bhaktapurhotel,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(bhaktapurhotel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.8,
                                sigmaX: 1.8,
                              ),
                              child: Container(
                                height: 60,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.topLeft,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    bhaktapurhotel.name +
                                        "\nRs." +
                                        bhaktapurhotel.price +
                                        " Per Night",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}

//start
class KathmanduhotelTile extends StatelessWidget {
  final Hotelkathmandu kathmanduhotel;
  KathmanduhotelTile({this.kathmanduhotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotelScreenKathmandu(
                        kathmanduhotel: kathmanduhotel,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(kathmanduhotel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.8,
                                sigmaX: 1.8,
                              ),
                              child: Container(
                                height: 70,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.topLeft,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    kathmanduhotel.name +
                                        "\nRs." +
                                        kathmanduhotel.price +
                                        " Per Night",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//end

//start
class KathmanduhotelTile1 extends StatelessWidget {
  final Hotelkathmandu kathmanduhotel;
  KathmanduhotelTile1({this.kathmanduhotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotelScreenKathmandu1(
                        kathmanduhotel: kathmanduhotel,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(kathmanduhotel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.8,
                                sigmaX: 1.8,
                              ),
                              child: Container(
                                height: 70,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.topLeft,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    kathmanduhotel.name +
                                        "\nRs." +
                                        kathmanduhotel.price +
                                        " Per Night",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//end

//start
class LalitpurhotelTile extends StatelessWidget {
  final Hotellalitpur lalitpurhotel;
  LalitpurhotelTile({this.lalitpurhotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotelScreenLalitpur(
                        lalitpurhotel: lalitpurhotel,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(lalitpurhotel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.8,
                                sigmaX: 1.8,
                              ),
                              child: Container(
                                height: 70,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.topLeft,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    lalitpurhotel.name +
                                        "\nRs." +
                                        lalitpurhotel.price +
                                        " Per Night",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//end

//start
class LalitpurhotelTile1 extends StatelessWidget {
  final Hotellalitpur lalitpurhotel;
  LalitpurhotelTile1({this.lalitpurhotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotelScreenLalitpur1(
                        lalitpurhotel: lalitpurhotel,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(lalitpurhotel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.8,
                                sigmaX: 1.8,
                              ),
                              child: Container(
                                height: 70,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.topLeft,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    lalitpurhotel.name +
                                        "\nRs." +
                                        lalitpurhotel.price +
                                        " Per Night",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//end

//start
class PokharahotelTile extends StatelessWidget {
  final Hotelpokhara pokharahotel;
  PokharahotelTile({this.pokharahotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotelScreenPokhara(
                        pokharahotel: pokharahotel,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(pokharahotel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.8,
                                sigmaX: 1.8,
                              ),
                              child: Container(
                                height: 70,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.topLeft,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    pokharahotel.name +
                                        "\nRs." +
                                        pokharahotel.price +
                                        " Per Night",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//end

//start
class PokharahotelTile1 extends StatelessWidget {
  final Hotelpokhara pokharahotel;
  PokharahotelTile1({this.pokharahotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotelScreenPokhara1(
                        pokharahotel: pokharahotel,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(pokharahotel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.8,
                                sigmaX: 1.8,
                              ),
                              child: Container(
                                height: 70,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.topLeft,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    pokharahotel.name +
                                        "\nRs." +
                                        pokharahotel.price +
                                        " Per Night",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//end

//start
class JanakpurhotelTile extends StatelessWidget {
  final Hoteljanakpur janakpurhotel;
  JanakpurhotelTile({this.janakpurhotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotelScreenJanakpur(
                        janakpurhotel: janakpurhotel,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(janakpurhotel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.8,
                                sigmaX: 1.8,
                              ),
                              child: Container(
                                height: 70,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.topLeft,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    janakpurhotel.name +
                                        "\nRs." +
                                        janakpurhotel.price +
                                        " Per Night",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//end

//start
class JanakpurhotelTile1 extends StatelessWidget {
  final Hoteljanakpur janakpurhotel;
  JanakpurhotelTile1({this.janakpurhotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotelScreenJanakpur1(
                        janakpurhotel: janakpurhotel,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(janakpurhotel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.8,
                                sigmaX: 1.8,
                              ),
                              child: Container(
                                height: 70,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.topLeft,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    janakpurhotel.name +
                                        "\nRs." +
                                        janakpurhotel.price +
                                        " Per Night",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//end

//start
class LumbinihotelTile extends StatelessWidget {
  final Hotellumbini lumbinihotel;
  LumbinihotelTile({this.lumbinihotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotelScreenLumbini(
                        lumbinihotel: lumbinihotel,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(lumbinihotel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.8,
                                sigmaX: 1.8,
                              ),
                              child: Container(
                                height: 70,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.topLeft,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    lumbinihotel.name +
                                        "\nRs." +
                                        lumbinihotel.price +
                                        " Per Night",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//end

//start
class LumbinihotelTile1 extends StatelessWidget {
  final Hotellumbini lumbinihotel;
  LumbinihotelTile1({this.lumbinihotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotelScreenLumbini1(
                        lumbinihotel: lumbinihotel,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(lumbinihotel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.8,
                                sigmaX: 1.8,
                              ),
                              child: Container(
                                height: 70,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.topLeft,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    lumbinihotel.name +
                                        "\nRs." +
                                        lumbinihotel.price +
                                        " Per Night",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//end

//start
class OthershotelTile extends StatelessWidget {
  final Hotelothers othershotel;
  OthershotelTile({this.othershotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotelScreenOthers(
                        othershotel: othershotel,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(othershotel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.8,
                                sigmaX: 1.8,
                              ),
                              child: Container(
                                height: 70,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.topLeft,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    othershotel.name +
                                        "\nRs." +
                                        othershotel.price +
                                        " Per Night",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//end

//start
class OthershotelTile1 extends StatelessWidget {
  final Hotelothers othershotel;
  OthershotelTile1({this.othershotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HotelScreenOthers1(
                        othershotel: othershotel,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(othershotel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaY: 1.8,
                                sigmaX: 1.8,
                              ),
                              child: Container(
                                height: 70,
                                width: 320,
                                padding: EdgeInsets.only(right: 5),
                                alignment: Alignment.topLeft,
                                child: Row(children: <Widget>[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    othershotel.name +
                                        "\nRs." +
                                        othershotel.price +
                                        " Per Night",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//end

class KathmanduTile extends StatelessWidget {
  final Kathmandu kathmandu;
  KathmanduTile({this.kathmandu});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Kathmandusingleplaces(
                        kathmandu: kathmandu,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(kathmandu.img),
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
                                    kathmandu.name,
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}

//for adventure

class AdventureTile extends StatelessWidget {
  final Adventure adventure;
  AdventureTile({this.adventure});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Adventuresingleplaces(
                        adventure: adventure,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(adventure.img),
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
                                    adventure.name,
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//for pokhara

class PokharaTile extends StatelessWidget {
  final Pokhara pokhara;
  PokharaTile({this.pokhara});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Pokharasingleplaces(
                        pokhara: pokhara,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(pokhara.img),
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
                                    pokhara.name,
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}

//for lalitpur

class LalitpurTile extends StatelessWidget {
  final Lalitpur lalitpur;
  LalitpurTile({this.lalitpur});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Lalitpursingleplaces(
                        lalitpur: lalitpur,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(lalitpur.img),
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
                                    lalitpur.name,
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//for janakpur

class JanakpurTile extends StatelessWidget {
  final Janakpur janakpur;
  JanakpurTile({this.janakpur});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Janakpursingleplaces(
                        janakpur: janakpur,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(janakpur.img),
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
                                    janakpur.name,
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
//for lumbini

class LumbiniTile extends StatelessWidget {
  final Lumbini lumbini;
  LumbiniTile({this.lumbini});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Lumbinisingleplaces(
                        lumbini: lumbini,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(lumbini.img),
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
                                    lumbini.name,
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}

//for solukhumbhu

class SolukhumbhuTile extends StatelessWidget {
  final Solukhumbhu solukhumbhu;
  SolukhumbhuTile({this.solukhumbhu});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Solukhumbhusingleplaces(
                        solukhumbhu: solukhumbhu,
                      )));
        },
        child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
                margin: EdgeInsets.fromLTRB(20.0, 6, 20, 0),
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(solukhumbhu.img),
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
                                    solukhumbhu.name,
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 22),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
