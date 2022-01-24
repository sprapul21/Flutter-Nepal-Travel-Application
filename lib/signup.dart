import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './Widgets/FormCard1.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:flutter_app/shared/loading.dart';

class SignUp extends StatefulWidget {
  final Function toggleView;
  SignUp({this.toggleView});
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmpass = TextEditingController();
  //for validator
  bool loading = false; //for loading screen
  //text field state
  String name = '';
  String email = '';
  String password = '';
  String cpassword = '';
  String error = '';
  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: ScreenUtil.getInstance().setWidth(120),
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(width: 650, height: 1334, allowFontScaling: true)
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
                      padding: EdgeInsets.only(top: 5.0, left: 5.0),
                      child: Image.asset('assets/image_01.png'),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    // Image.asset('assets/travel.jpg'),
                  ],
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 28.0, right: 28.0, top: 30.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'assets/logo.png',
                              width: ScreenUtil.getInstance().setWidth(80),
                              height: ScreenUtil.getInstance().setHeight(100),
                            ),
                            Text('Travel App',
                                style: TextStyle(
                                  fontFamily: 'Poppins-Bold',
                                  fontSize: ScreenUtil.getInstance().setSp(46),
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
                          height: ScreenUtil.getInstance().setHeight(680),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('SignUp',
                                      style: TextStyle(
                                        fontSize:
                                            ScreenUtil.getInstance().setSp(50),
                                        fontFamily: 'Poppins-Bold',
                                        letterSpacing: .6,
                                      )),
                                  SizedBox(
                                    height:
                                        ScreenUtil.getInstance().setHeight(10),
                                  ),
                                  Text('Email',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Medium',
                                        fontSize:
                                            ScreenUtil.getInstance().setSp(26),
                                      )),
                                  TextFormField(
                                    validator: (val) =>
                                        val.isEmpty ? 'Enter an Email' : null,
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
                                    height:
                                        ScreenUtil.getInstance().setHeight(10),
                                  ),
                                  Text('Name',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Medium',
                                        fontSize:
                                            ScreenUtil.getInstance().setSp(26),
                                      )),
                                  TextFormField(
                                    validator: (val) =>
                                        val.isEmpty ? 'Enter an Name' : null,
                                    onChanged: (val) {
                                      setState(() => name = val);
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'name',
                                        hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0)),
                                  ),
                                  Text('Password',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Medium',
                                        fontSize:
                                            ScreenUtil.getInstance().setSp(26),
                                      )),
                                  TextFormField(
                                    controller: _pass,
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
                                    height:
                                        ScreenUtil.getInstance().setHeight(10),
                                  ),
                                  Text('Confirm Password',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Medium',
                                        fontSize:
                                            ScreenUtil.getInstance().setSp(26),
                                      )),
                                  TextFormField(
                                    controller: _confirmpass,
                                    validator: (val) => val != _pass.text
                                        ? 'Password does not match'
                                        : null,
                                    onChanged: (val) {
                                      setState(() => cpassword = val);
                                    },
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: 'Confirm password',
                                        hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0)),
                                  ),
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
                                SizedBox(
                                  width: ScreenUtil.getInstance().setWidth(6.0),
                                ),
                                SizedBox(
                                  width: ScreenUtil.getInstance().setWidth(4.0),
                                ),
                                Text('Become a new member',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'Poppins-Medium',
                                    )),
                              ],
                            ),
                            InkWell(
                              child: Container(
                                  width: ScreenUtil.getInstance().setWidth(300),
                                  height:
                                      ScreenUtil.getInstance().setHeight(100),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0xFF17ead9),
                                      Color(0xFF6078ea),
                                      Colors.blue
                                    ]),
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF6078ea).withOpacity(.3),
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
                                              setState(() => loading = true);

                                              dynamic result = await _auth
                                                  .registerWithEmailAndPassword(
                                                      email, password);
                                              if (result == null) {
                                                setState(() {
                                                  error =
                                                      'please supply a valid email';
                                                  loading = false;
                                                });
                                              }
                                            }
                                          },
                                          child: Center(
                                              child: Text('SIGNUP',
                                                  style: TextStyle(
                                                      color: Colors.white60,
                                                      fontFamily:
                                                          'Poppins-Bold',
                                                      fontSize: 18.0,
                                                      letterSpacing: 1.0)))))),
                            )
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil.getInstance().setHeight(10),
                        ),
                        Text(
                          error,
                          style: TextStyle(color: Colors.red, fontSize: 14.0),
                        ),
                        SizedBox(
                          height: ScreenUtil.getInstance().setHeight(10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Old User? ',
                              style: TextStyle(fontFamily: 'Poppins-Medium'),
                            ),
                            InkWell(
                              onTap: () {
                                widget.toggleView();
                              },
                              child: Text('SignIn',
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Bold',
                                    color: Color(0xFF5d74e3),
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
