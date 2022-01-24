import 'package:flutter/material.dart';
import 'package:flutter_app/screens/authenticate/authenticate.dart';
import 'package:flutter_app/screens/authenticate/sign_in.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'package:flutter_app/models/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    if (user == null) {
      print(' Return Null');
      return Authenticate();
    } else {
      return HomePage();
    }

    //return either homepage or auth page
  }
}
