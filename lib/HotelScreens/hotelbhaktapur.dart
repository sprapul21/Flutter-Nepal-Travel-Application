// import 'package:flutter/material.dart';
// import 'package:flutter_app/models/bhaktapur.dart';
// import 'package:flutter_app/services/database.dart';
// import 'package:provider/provider.dart';

// import 'HotelPage.dart';

// class Bhaktapurplaces extends StatefulWidget {
//   @override
//   _BhaktapurplacesState createState() => _BhaktapurplacesState();
// }

// class _BhaktapurplacesState extends State<Bhaktapurplaces> {
//   @override
//   Widget build(BuildContext context) {
//     return StreamProvider<List<Hotelbha>>.value(
//       value: DatabaseService().bhaktapurinfo,
//       child: Scaffold(
//         appBar: AppBar(
//           actions: <Widget>[
//             FlatButton.icon(
//                 onPressed: () {
//                   Navigator.of(context).push(
//                       MaterialPageRoute(builder: (context) => HotelScreen()));
//                 },
//                 icon: Icon(
//                   Icons.local_hotel,
//                   color: Colors.white,
//                 ),
//                 label: Text(
//                   'Hotels',
//                   style: TextStyle(fontSize: 20, color: Colors.white),
//                 ))
//           ],
//           title: Text('Bhaktapur Places Page'),
//         ),
//         body: Bhaktapurlist(),
//       ),
//     );
//   }
// }
