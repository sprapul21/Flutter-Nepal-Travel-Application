// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Checkout extends StatefulWidget {
//   @override
//   _CheckoutState createState() => _CheckoutState();
// }

// class _CheckoutState extends State<Checkout> {
//   List<String> _numberofpeople = [
//     '1',
//     '2',
//     '3',
//     '4',
//     '5',
//     '6',
//     '7',
//     '8',
//     '9',
//   ];
//   List<String> _roomno = [
//     '1',
//     '2',
//     '3',
//     '4',
//     '5',
//     '6',
//     '7',
//     '8',
//     '9',
//   ];
//   //for counter

//   int _counter = 1;
//   int _price = 0;
//   void _incrementprice() {
//     setState(() {
//       if (_counter < 10) (_counter++);
//     });
//   }

//   void _decrementprice() {
//     setState(() {
//       if (_counter > 1) (_counter--);
//     });
//   }

//   String _selectedno;
//   String _selectedrooms;
//   String _selectedcity;
//   final _formKey = GlobalKey<FormState>();
//   String email;
//   String phoneno;
//   String name;
//   bool loading = false;
//   int price = 1000;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Check Out',
//               style: GoogleFonts.roboto(
//                   color: Colors.red, fontWeight: FontWeight.w600)),
//           backgroundColor: Colors.transparent,
//           elevation: 0.0,
//           iconTheme: IconThemeData(
//             color: Colors.red, //change your color here
//           ),
//         ),
//         extendBodyBehindAppBar: true,
//         backgroundColor: Colors.orange[50],
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SafeArea(
//             child: SingleChildScrollView(
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Container(
//                           height: 150,
//                           width: MediaQuery.of(context).size.width * 0.4,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.orange[50],
//                             border: Border.all(width: 2, color: Colors.black),
//                             image: DecorationImage(
//                                 image: NetworkImage(
//                                   "https://images.unsplash.com/photo-1590001155093-a3c66ab0c3ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
//                                 ),
//                                 fit: BoxFit.cover),
//                           ),
//                         ),
//                         Container(
//                             height: 150,
//                             width: MediaQuery.of(context).size.width * 0.3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.stretch,
//                               children: [
//                                 Container(
//                                   child: Text("Praphul Limited Hotel",
//                                       style: GoogleFonts.lato(
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.w900)),
//                                 ),
//                                 SizedBox(
//                                   height: 2,
//                                 ),
//                                 Container(
//                                   child: Text("Rs. ${price * _counter}",
//                                       style: GoogleFonts.lato(
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.w900,
//                                           color: Colors.red)),
//                                 ),
//                                 SizedBox(
//                                   height: 2,
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text('People: '),
//                                     Container(
//                                       child: Text(_selectedno ?? "unselected",
//                                           style: GoogleFonts.lato(
//                                               fontSize: 16,
//                                               fontWeight: FontWeight.w900)),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 2,
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text('Rooms: '),
//                                     Container(
//                                       child: Text(
//                                           _selectedrooms ?? "unselected",
//                                           style: GoogleFonts.lato(
//                                               fontSize: 16,
//                                               fontWeight: FontWeight.w900)),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             )),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       "Please Enter Your Details",
//                       style: GoogleFonts.roboto(
//                           color: Colors.red,
//                           fontSize: 26,
//                           fontWeight: FontWeight.w600,
//                           decoration: TextDecoration.underline,
//                           decorationThickness: 1.2),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),

//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "Total Stay",
//                           style: TextStyle(
//                               fontSize: 20, fontWeight: FontWeight.w800),
//                         ),
//                         Container(
//                             child: IconButton(
//                           icon: Icon(Icons.arrow_left_rounded),
//                           onPressed: _decrementprice,
//                         )),
//                         Text(
//                           "$_counter",
//                           textAlign: TextAlign.right,
//                           style: TextStyle(
//                               fontSize: 20, fontWeight: FontWeight.w800),
//                         ),
//                         Container(
//                             child: IconButton(
//                           icon: Icon(Icons.arrow_right_rounded),
//                           onPressed: _incrementprice,
//                         )),
//                         Text(
//                           "Nights",
//                           style: TextStyle(
//                               fontSize: 20, fontWeight: FontWeight.w800),
//                         ),
//                       ],
//                     ),
//                     DropdownButton(
//                       hint: Text(
//                           'Please choose number of people'), // Not necessary for Option 1
//                       value: _selectedno,
//                       onChanged: (newValue) {
//                         setState(() {
//                           _selectedno = newValue;
//                         });
//                       },
//                       items: _numberofpeople.map((location) {
//                         return DropdownMenuItem(
//                           child: new Text(location),
//                           value: location,
//                         );
//                       }).toList(),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     // Text(_selectedno ?? "Please Select number of people"),
//                     DropdownButton(
//                       hint: Text(
//                           'Please Select Number of Room'), // Not necessary for Option 1
//                       value: _selectedrooms,
//                       onChanged: (newValue) {
//                         setState(() {
//                           _selectedrooms = newValue;
//                         });
//                       },
//                       items: _roomno.map((location) {
//                         return DropdownMenuItem(
//                           child: new Text(location),
//                           value: location,
//                         );
//                       }).toList(),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     // Text(_selectedno ?? "Please Select number of Room"),
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.8,
//                       decoration: BoxDecoration(
//                         color: Colors.orange[50],
//                         borderRadius: BorderRadius.circular(5.0),
//                       ),
//                       child: TextFormField(
//                         validator: (val) =>
//                             val.isEmpty ? 'Enter an Email' : null,
//                         onChanged: (val) {
//                           setState(() => email = val);
//                         },
//                         decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(Icons.person),
//                             hintText: 'Please Enter Your Email Here',
//                             hintStyle:
//                                 TextStyle(color: Colors.grey, fontSize: 12.0)),
//                       ),
//                     ),
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.8,
//                       decoration: BoxDecoration(
//                         color: Colors.orange[50],
//                         borderRadius: BorderRadius.circular(5.0),
//                       ),
//                       child: TextFormField(
//                         validator: (val) =>
//                             val.isEmpty ? 'Enter an Name' : null,
//                         onChanged: (val) {
//                           setState(() => name = val);
//                         },
//                         decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(Icons.person),
//                             hintText: 'Please Enter Your Name Here',
//                             hintStyle:
//                                 TextStyle(color: Colors.grey, fontSize: 12.0)),
//                       ),
//                     ),
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.8,
//                       decoration: BoxDecoration(
//                         color: Colors.orange[50],
//                         borderRadius: BorderRadius.circular(5.0),
//                       ),
//                       child: TextFormField(
//                         keyboardType: TextInputType.number,
//                         validator: (val) => val.length == 10
//                             ? null
//                             : 'Phone Number shuld be of 10 digits',
//                         onChanged: (val) {
//                           setState(() => phoneno = val);
//                         },
//                         decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(Icons.phone),
//                             hintText: 'Please Enter Your Phone Number Here',
//                             hintStyle:
//                                 TextStyle(color: Colors.grey, fontSize: 12.0)),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: InkWell(
//                         onTap: () async {
//                           if (_formKey.currentState.validate()) {
//                             setState(() => loading = true);
//                           }
//                         },
//                         child: Container(
//                           height: 60,
//                           decoration: BoxDecoration(
//                               color: Colors.redAccent[200],
//                               borderRadius: BorderRadius.circular(12)),
//                           alignment: Alignment.center,
//                           child: Text(
//                             "Confirm Appointment",
//                             style: GoogleFonts.lato(
//                                 textStyle: TextStyle(
//                                     fontSize: 28,
//                                     fontWeight: FontWeight.w800,
//                                     color: Colors.white)),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ));
//   }
// }
