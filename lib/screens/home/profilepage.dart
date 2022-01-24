import 'dart:io';
import 'package:flutter_app/screens/authenticate/signinadmin.dart';
import 'package:flutter_app/screens/home/calendar.dart';
import 'package:flutter_app/screens/home/weather.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:image_picker/image_picker.dart';
import 'map.dart';
import 'feedback.dart';
import 'weathereal.dart';

class ProfileScreen extends StatefulWidget {
  //for logiing out button only
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final AuthService _auth = new AuthService();

  PickedFile _imageFile;

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd8ecf2),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        title: Text(
          'Profile Page',
          style: TextStyle(
            color: Colors.blue[800],
            fontSize: 18, //16
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInAdmin()));
              },
              child: Text(
                "Admin Login",
                style: TextStyle(color: Colors.blue[700]),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 2.0)),
                    padding: EdgeInsets.all(2),
                    child: Stack(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: _imageFile == null
                              ? AssetImage('assets/profile.png')
                              : FileImage(File(_imageFile.path)),
                        ),
                        Positioned(
                          bottom: 17,
                          right: 7,
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: ((builder) => bottomSheet()),
                              );
                            },
                            child: Icon(Icons.camera_alt,
                                color: Colors.white, size: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Praphul Shrestha',
              style: TextStyle(fontSize: 24, color: Colors.blue),
            ),
            Text(
              'praphul@gmail.com',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
            Container(
              child: FlatButton(
                  onPressed: () async {
                    await _auth.sigmOut();
                  },
                  child: Text('Sign Out')),
            ),
            Card(
              color: Colors.lightBlue[100],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeatherApp()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        Icons.feedback,
                        size: 30,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            border: Border.all(
                                color: Colors.lightBlue[100], width: 7),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.elliptical(5, 6),
                              bottomRight: Radius.elliptical(5, 6),
                            ),
                          ),
                          child: Text(
                            'Weather',
                            style: TextStyle(fontSize: 50),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.arrow_forward,
                            size: 30,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              color: Colors.lightBlue[100],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Weather()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        Icons.translate,
                        size: 30,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 80,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        border:
                            Border.all(color: Colors.lightBlue[100], width: 7),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(5, 6),
                          bottomRight: Radius.elliptical(5, 6),
                        ),
                      ),
                      child: Text(
                        'Translator',
                        style: TextStyle(fontSize: 45),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    InkWell(
                      child: Icon(
                        Icons.arrow_forward,
                        size: 30,
                        color: Colors.blueAccent,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Weather()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              color: Colors.lightBlue[100],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FeedbackPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        Icons.feedback,
                        size: 30,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            border: Border.all(
                                color: Colors.lightBlue[100], width: 7),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.elliptical(5, 6),
                              bottomRight: Radius.elliptical(5, 6),
                            ),
                          ),
                          child: Text(
                            'Feedback',
                            style: TextStyle(fontSize: 50),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.arrow_forward,
                            size: 30,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              color: Colors.lightBlue[100],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calendar()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        Icons.calendar_today,
                        size: 30,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 80,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        border:
                            Border.all(color: Colors.lightBlue[100], width: 7),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(5, 6),
                          bottomRight: Radius.elliptical(5, 6),
                        ),
                      ),
                      child: Text(
                        'Trip Planner',
                        style: TextStyle(fontSize: 40),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    InkWell(
                      child: Icon(
                        Icons.arrow_forward,
                        size: 30,
                        color: Colors.blueAccent,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Calendar()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: <Widget>[
          Text(
            'Choose Profile Photo',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text('Camera'),
            ),
            FlatButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text('Gallery'),
            ),
          ]),
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }
}
