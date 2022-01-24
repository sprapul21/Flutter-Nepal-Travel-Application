import 'package:flutter_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  var rating = 0.0;
  var feedback;
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
                Navigator.of(context).popUntil((_) => count++ >= 2);
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
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Feedback ',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue[200],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text(
                'Rate your Experience',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'How was your experience using our app?',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25, top: 20, bottom: 10),
              child: SmoothStarRating(
                rating: 0.0,
                isReadOnly: false,
                size: 60,
                filledIconData: Icons.star_rounded,
                halfFilledIconData: Icons.star_half_rounded,
                defaultIconData: Icons.star_border_rounded,
                starCount: 5,
                allowHalfRating: true,
                spacing: 2.0,
                color: Colors.blue,
                borderColor: Colors.blue,
                onRated: (value) {
                  setState(() {
                    rating = value;
                  });
                  print(rating);
                  // print("rating value dd -> ${value.truncate()}");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.black26,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Please give us feedbacks so we can improve',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      feedback = value;
                    });
                  },
                  validator: (val) =>
                      val.isEmpty ? 'Please provide feedback' : null,
                  cursorColor: Colors.black,
                  maxLines: 8,
                  decoration: InputDecoration(
                    hintText: 'Tell us what can we improve..',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                    ),
                  ),
                ),
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
                      dynamic result = _auth.saveFeedback(rating, feedback);
                      if (result == null) {
                        message = 'Sorry! Feedback not submitted';
                      } else {
                        message = 'Your feedback was successfully submitted.';
                      }
                      createSuccessMessage(context);
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
            Center(
              child: Text(
                ' Your reviews will be saved and your voices will be heard by the developer',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
