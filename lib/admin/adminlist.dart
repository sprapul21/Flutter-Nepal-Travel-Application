import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/recommendation_model.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminLists extends StatefulWidget {
  const AdminLists({Key key}) : super(key: key);

  @override
  _AdminListsState createState() => _AdminListsState();
}

class _AdminListsState extends State<AdminLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin List'),
      ),
      body: ListView.builder(
        itemCount: adminData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => adminlist[index].route));
            },
            child: Card(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(adminlist[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14.8),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaY: 1.8,
                            sigmaX: 1.8,
                          ),
                          child: Container(
                            height: 40,
                            width: 320,
                            padding: EdgeInsets.only(right: 5),
                            alignment: Alignment.topLeft,
                            child: Row(children: <Widget>[
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                adminlist[index].name,
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 30),
                              )
                            ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
