import 'package:flutter/material.dart';
import 'package:flutter_app/screens/authenticate/signinadmin.dart';
import 'package:flutter_app/shared/loading.dart';
import 'package:flutter_app/signup.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_app/Widgets/FormCard.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:flutter_app/screens/reset.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  //text field state
  String email = '';
  String password = '';
  String error = '';
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(width: 650, height: 1234, allowFontScaling: true)
          ..init(context);

    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.blue[100],
            resizeToAvoidBottomInset: true,
            body: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.0,
                        left: 5.0,
                      ),
                      child: Image.asset('assets/image_01.png'),
                    ),
                  ],
                ),
                SingleChildScrollView(
                    child: Padding(
                        padding:
                            EdgeInsets.only(left: 28.0, right: 28.0, top: 40.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/logo.png',
                                  width: ScreenUtil.getInstance().setWidth(80),
                                  height:
                                      ScreenUtil.getInstance().setHeight(100),
                                ),
                                Text('Nepal Travel',
                                    style: TextStyle(
                                      fontFamily: 'Poppins-Bold',
                                      fontSize:
                                          ScreenUtil.getInstance().setSp(46),
                                      letterSpacing: .6,
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: ScreenUtil.getInstance().setHeight(180),
                            ),
                            Container(
                              width: double.infinity,
                              height: ScreenUtil.getInstance().setHeight(550),
                              decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 15.0),
                                    blurRadius: 15.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(2.0, 20.0),
                                    blurRadius: 10.0,
                                  ),
                                ],
                              ),
                              child: Form(
                                key: _formKey,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.0, top: 16.0, right: 16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Login',
                                          style: TextStyle(
                                            fontSize: ScreenUtil.getInstance()
                                                .setSp(50),
                                            fontFamily: 'Poppins-Bold',
                                            letterSpacing: .6,
                                          )),
                                      SizedBox(
                                        height: ScreenUtil.getInstance()
                                            .setHeight(10),
                                      ),
                                      Text('Email',
                                          style: TextStyle(
                                            fontFamily: 'Poppins-Medium',
                                            fontSize: ScreenUtil.getInstance()
                                                .setSp(26),
                                          )),
                                      TextFormField(
                                        validator: (val) => val.isEmpty
                                            ? 'Enter an Email'
                                            : null,
                                        onChanged: (val) {
                                          setState(() => email = val);
                                        },
                                        decoration: InputDecoration(
                                            hintText: 'email',
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12.0)),
                                      ),
                                      SizedBox(
                                        height: ScreenUtil.getInstance()
                                            .setHeight(10),
                                      ),
                                      Text('Password',
                                          style: TextStyle(
                                            fontFamily: 'Poppins-Medium',
                                            fontSize: ScreenUtil.getInstance()
                                                .setSp(26),
                                          )),
                                      TextFormField(
                                        validator: (val) => val.length < 6
                                            ? 'Enter an password more than 6 character'
                                            : null,
                                        onChanged: (val) {
                                          setState(() => password = val);
                                        },
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            hintText: 'password',
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12.0)),
                                      ),
                                      SizedBox(
                                        height: ScreenUtil.getInstance()
                                            .setHeight(6),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          TextButton(
                                              child: Text(
                                                'Forgot Password?',
                                                style: TextStyle(
                                                  color: Colors.green[500],
                                                  fontFamily: 'Poppins-Medium',
                                                  fontSize:
                                                      ScreenUtil.getInstance()
                                                          .setSp(18),
                                                ),
                                              ),
                                              onPressed: () =>
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ResetScreen()),
                                                  )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil.getInstance().setHeight(35),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: ScreenUtil.getInstance()
                                          .setWidth(200),
                                      height: ScreenUtil.getInstance()
                                          .setHeight(50),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Colors.blueAccent[100],
                                          Colors.blueAccent[200],
                                          Colors.blueAccent,
                                        ]),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFF6078ea)
                                                .withOpacity(.3),
                                            offset: Offset(0.0, 8.0),
                                            blurRadius: 10.0,
                                          )
                                        ],
                                      ),
                                      child: OutlineButton.icon(
                                          borderSide:
                                              BorderSide(color: Colors.white10),
                                          label: Text('Sign In'),
                                          icon: FaIcon(FontAwesomeIcons.google),
                                          onPressed: () {
                                            dynamic result =
                                                _auth.googleSignIn(context);
                                            if (result == null) {
                                              setState(() {
                                                loading = true;
                                              });
                                            }
                                          }),
                                    ),
                                    SizedBox(
                                      width: ScreenUtil.getInstance()
                                          .setWidth(6.0),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  child: Container(
                                      width: ScreenUtil.getInstance()
                                          .setWidth(300),
                                      height: ScreenUtil.getInstance()
                                          .setHeight(100),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Color(0xFF17ead9),
                                          Color(0xFF6078ea),
                                          Colors.blue
                                        ]),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFF6078ea)
                                                .withOpacity(.3),
                                            offset: Offset(0.0, 8.0),
                                            blurRadius: 10.0,
                                          )
                                        ],
                                      ),
                                      child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                              onTap: () async {
                                                if (_formKey.currentState
                                                    .validate()) {
                                                  setState(
                                                      () => loading = true);
                                                  dynamic result = await _auth
                                                      .signInWithEmailAndPassword(
                                                          email, password);
                                                  if (result == null) {
                                                    setState(() {
                                                      error =
                                                          'Could not Sign In Check your email or password';
                                                      loading = false;
                                                    });
                                                  }
                                                }
                                              },
                                              child: Center(
                                                  child: Text('SIGNIN',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily:
                                                              'Poppins-Bold',
                                                          fontSize: 18.0,
                                                          letterSpacing:
                                                              1.0)))))),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: ScreenUtil.getInstance().setHeight(30),
                            ),
                            Text(
                              error,
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14.0),
                            ),
                            SizedBox(
                              height: ScreenUtil.getInstance().setHeight(10),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'New User? ',
                                  style:
                                      TextStyle(fontFamily: 'Poppins-Medium'),
                                ),
                                InkWell(
                                  onTap: () {
                                    widget.toggleView();
                                  },
                                  child: Text('SignUp',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Bold',
                                        color: Color(0xFF5d74e3),
                                      )),
                                )
                              ],
                            ),
                          ],
                        ))),
              ],
            ));
  }
}
