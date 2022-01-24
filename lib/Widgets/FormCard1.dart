import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: ScreenUtil.getInstance().setHeight(700),
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
        child: Padding(
          padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('SignUp',
                  style: TextStyle(
                    fontSize: ScreenUtil.getInstance().setSp(50),
                    fontFamily: 'Poppins-Bold',
                    letterSpacing: .6,
                  )),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(10),
              ),
              Text('Email',
                  style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: ScreenUtil.getInstance().setSp(26),
                  )),
              TextField(
                decoration: InputDecoration(
                    hintText: 'email or username',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              ),
              Text('Username',
                  style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: ScreenUtil.getInstance().setSp(26),
                  )),
              TextField(
                decoration: InputDecoration(
                    hintText: 'username',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(10),
              ),
              Text('Password',
                  style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: ScreenUtil.getInstance().setSp(26),
                  )),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'password',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(10),
              ),
              Text('Confirm Password',
                  style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: ScreenUtil.getInstance().setSp(26),
                  )),
              TextField(
                decoration: InputDecoration(
                    hintText: 'password',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              ),
            ],
          ),
        ));
  }
}
