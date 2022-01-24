import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/bhaktapurplaces.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'package:flutter_app/screens/home/recommendation_model.dart';
import 'package:flutter_app/services/auth.dart';

class AdminPannelKathmandu extends StatefulWidget {
  const AdminPannelKathmandu({Key key}) : super(key: key);

  @override
  _AdminPannelKathmanduState createState() => _AdminPannelKathmanduState();
}

class _AdminPannelKathmanduState extends State<AdminPannelKathmandu> {
  AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String name;
  String image;
  String desc;
  String price;
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
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello',
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Center(
              child: Container(
                child: Text('Kathmandu Add Hotel'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                validator: (val) => val.isEmpty ? 'Enter a Hotel name' : null,
                onChanged: (val) => {setState(() => name = val)},
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.person),
                    hintText: 'Please Enter Hotel Name Here',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                validator: (val) =>
                    val.isEmpty ? 'Enter an Hotel Image Url' : null,
                onChanged: (val) => {setState(() => desc = val)},
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.person),
                    hintText: 'Please Enter Enter an Hotel Image Url',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                validator: (val) =>
                    val.isEmpty ? 'Enter an Hotel Description' : null,
                onChanged: (val) => {setState(() => image = val)},
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.person),
                    hintText: 'Please Enter an Hotel Description',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                validator: (val) => val.isEmpty ? 'Enter an Price ' : null,
                onChanged: (val) => {setState(() => price = val)},
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.person),
                    hintText: 'Please Enter Enter an Hotel Price',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blue,
                ),
                child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      dynamic result =
                          _auth.saveKathmanduAdmin(name, desc, image, price);
                      if (result == null) {
                        message = 'Sorry! hotel not submitted';
                      } else {
                        message = 'Your hotel was successfully submitted.';
                      }
                      createSuccessMessage(context);
                      print(name);
                    }
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Hotelkathmanduplaces1()));
              },
              child: Container(
                height: 70,
                width: 150,
                child: Center(
                    child: Text(
                  'View Hotels',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )),
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
