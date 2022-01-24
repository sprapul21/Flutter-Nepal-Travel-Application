import 'package:flutter/material.dart';
// import 'package:flutter_app/screens/authenticate/sign_in.dart';
import 'package:flutter_app/screens/wrapper.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:flutter_app/models/user.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: AnimatedSplashScreen(
          splash: Image.asset(
            'assets/trans.png',
            height: 500,
            width: 500,
          ),
          nextScreen: Wrapper(),
          splashTransition: SplashTransition.sizeTransition,
          duration: 2,
          backgroundColor: Colors.blueGrey[200],
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
