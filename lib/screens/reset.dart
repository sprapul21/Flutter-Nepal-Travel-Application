import 'package:flutter/material.dart';
import 'package:flutter_app/shared/loading.dart';
import 'package:flutter_app/screens/authenticate/sign_in.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_app/Widgets/FormCard.dart';
import 'package:flutter_app/services/auth.dart';

class ResetScreen extends StatefulWidget {
  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  String email = '';
  final AuthService _auth = AuthService();

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
                                Text('Travel App',
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
                              height: ScreenUtil.getInstance().setHeight(400),
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
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.0, top: 16.0, right: 16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Reset Password',
                                          style: TextStyle(
                                            fontSize: ScreenUtil.getInstance()
                                                .setSp(50),
                                            fontFamily: 'Poppins-Bold',
                                            letterSpacing: .6,
                                          )),
                                      SizedBox(
                                        height: ScreenUtil.getInstance()
                                            .setHeight(30),
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
                                            hintText: 'enter email here',
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
                                      width: ScreenUtil.getInstance()
                                          .setWidth(6.0),
                                    ),
                                    Text('Reset password',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontFamily: 'Poppins-Medium',
                                        )),
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
                                              onTap: () {
                                                _auth.reset(email);
                                                Navigator.of(context).pop();
                                              },
                                              child: Center(
                                                  child: Text('Send Request',
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
                              '',
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
                                  'Go Back to SignIn Page ',
                                  style:
                                      TextStyle(fontFamily: 'Poppins-Medium'),
                                ),
                                InkWell(
                                  onTap: () => Navigator.pop(context),
                                  child: Text('SignIn',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Bold',
                                        color: Color(0xFF5d74e3),
                                      )),
                                )
                              ],
                            )
                          ],
                        ))),
              ],
            ));
  }
}
