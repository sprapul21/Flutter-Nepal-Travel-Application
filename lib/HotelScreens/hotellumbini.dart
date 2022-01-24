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
import 'HotelCheckoutScreen.dart';

class HotelScreenLumbini extends StatefulWidget {
  final Hotellumbini lumbinihotel;
  HotelScreenLumbini({this.lumbinihotel});
  @override
  _HotelScreenLumbiniState createState() => _HotelScreenLumbiniState();
}

final FirebaseAuth auth = FirebaseAuth.instance;

class _HotelScreenLumbiniState extends State<HotelScreenLumbini> {
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
              Image.network(widget.lumbinihotel.image),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 24,
                ),
                child: Text(
                  widget.lumbinihotel.name,
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
                  "Rs." + widget.lumbinihotel.price + " Per Night",
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
                  widget.lumbinihotel.desc,
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: 16,
                    letterSpacing: 0.8,
                  )),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 40,
                  child: Text(
                    "Fill All The Details Below",
                    style: GoogleFonts.lato(
                        decoration: TextDecoration.underline,
                        fontSize: 26,
                        fontWeight: FontWeight.w800,
                        color: Colors.blue[900]),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber[50],
                      border: Border.all(width: 2, color: Colors.black),
                      image: DecorationImage(
                          image: NetworkImage(widget.lumbinihotel.image),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Center(
                    child: Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              child: Text(widget.lumbinihotel.name,
                                  style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900)),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Container(
                              child: Text("Rs. ${widget.lumbinihotel.price}",
                                  style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.red)),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Please Enter Your Details",
                  style: GoogleFonts.roboto(
                      color: Colors.red,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      decorationThickness: 1.2),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                key: _formKey,
                child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  // Text(_selectedno ?? "Please Select number of Room"),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (val) => val.length > 10
                            ? 'Number of rooms should be less than 10'
                            : null,
                        onChanged: (val) {
                          setState(() => _selectedrooms = val);
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.person),
                            hintText: 'Please Enter Your Rooms',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12.0)),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: TextFormField(
                        validator: (val) => val.isEmpty ? 'Hotel Name' : null,
                        onChanged: (val) {
                          setState(() => hotelname = val);
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.person),
                            hintText: 'Please Enter Your Hotel Name Here',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12.0)),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: TextFormField(
                        validator: (val) =>
                            val.isEmpty ? 'Enter an Email' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.person),
                            hintText: 'Please Enter Your Email Here',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12.0)),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: TextFormField(
                        validator: (val) =>
                            val.isEmpty ? 'Enter an Name' : null,
                        onChanged: (val) {
                          setState(() => name = val);
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.person),
                            hintText: 'Please Enter Your Name Here',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12.0)),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (val) => val.length == 10
                            ? null
                            : 'Phone Number shuld be of 10 digits',
                        onChanged: (val) {
                          setState(() => phoneno = val);
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.phone),
                            hintText: 'Please Enter Your Phone Number Here',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        if (_formKey.currentState.validate()) {
                          dynamic result = _auth.lumbinibookings(
                            name,
                            email,
                            phoneno,
                            _selectedrooms,
                            hotelname,
                          );
                          if (result == null) {
                            message = 'Sorry! Booking not submitted';
                          } else {
                            message =
                                'Your Booking is sucessful and you will be contacted shortlty.';
                          }
                          createSuccessMessage(context);
                        }
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[700],
                            borderRadius: BorderRadius.circular(12)),
                        alignment: Alignment.center,
                        child: Text(
                          "Confirm Appointment",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                ]),
              )
            ],
          )
        ]));
  }
}
