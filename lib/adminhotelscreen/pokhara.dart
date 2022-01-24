import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/bhaktapur.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sqflite/sqflite.dart';
import '../main.dart';

class HotelScreenPokhara1 extends StatefulWidget {
  final Hotelpokhara pokharahotel;
  HotelScreenPokhara1({this.pokharahotel});
  @override
  _HotelScreenPokhara1State createState() => _HotelScreenPokhara1State();
}

final FirebaseAuth auth = FirebaseAuth.instance;

class _HotelScreenPokhara1State extends State<HotelScreenPokhara1> {
  // final tabs = [HotelScreen(), Checkout()];
  @override
  String _selectedno;
  String _selectedrooms;
  String hotelname;
  final _formKey = GlobalKey<FormState>();
  String email;
  String phoneno;
  String error;
  String name;
  bool loading = false;
  String price;
  AuthService _auth = AuthService();

  String message;

  createSuccessMessage(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(
                Icons.thumb_up_outlined,
              ),
              SizedBox(width: 10),
              Text('Thank You!'),
            ],
          ),
          content: Text(message),
          actions: <Widget>[
            FlatButton(
              splashColor: Colors.transparent,
              onPressed: () {
                int count = 0;
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                'Back to home',
                style: TextStyle(
                  color: Color(0xffFFA876),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('Hotel Screen', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(
          color: Colors.redAccent, //change your color here
        ),
        backgroundColor: Colors.blue[100],
      ),
      body: Stack(children: [
        ListView(
          children: [
            Image.network(widget.pokharahotel.image),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 24,
              ),
              child: Text(
                widget.pokharahotel.name,
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  color: Colors.black,
                  letterSpacing: 0.5,
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 24,
              ),
              child: Text(
                "Rs." + widget.pokharahotel.price + " Per Night",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  color: Colors.blue[800],
                  letterSpacing: 0.5,
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 24,
              ),
              child: Text(
                widget.pokharahotel.desc,
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.8,
                )),
              ),
            ),
          ],
        )
      ]),
      floatingActionButton: new FloatingActionButton(
          child: Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {
            Firestore.instance
                .collection("HotelPokhara")
                .document(widget.pokharahotel.name)
                .delete();
          }),
    );
  }
}
