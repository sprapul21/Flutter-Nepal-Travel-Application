import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/models/bhaktapur.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_app/screens/home/places.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  //collection reference
  final CollectionReference travelCollection =
      Firestore.instance.collection('travels');

  final CollectionReference bhaktapurCollection =
      Firestore.instance.collection('Bhaktapur');

  final CollectionReference kathmanduCollection =
      Firestore.instance.collection('Kathmandu');

  final CollectionReference adventureCollection =
      Firestore.instance.collection('Adventure');

  final CollectionReference pokharaCollection =
      Firestore.instance.collection('Pokhara');

  final CollectionReference lalitpurCollection =
      Firestore.instance.collection('Lalitpur');

  final CollectionReference janakpurCollection =
      Firestore.instance.collection('Janakpur');

  final CollectionReference lumbiniCollection =
      Firestore.instance.collection('Lumbini');

  final CollectionReference solukhumbhuCollection =
      Firestore.instance.collection('Solukhumbhu');

  final CollectionReference adminCollection =
      Firestore.instance.collection('AdminData');

  final CollectionReference hotelbhaktapurCollection =
      Firestore.instance.collection('HotelBhaktapur');

  final CollectionReference hotelkathmanduCollection =
      Firestore.instance.collection('HotelKathmandu');

  final CollectionReference hotellalitpurCollection =
      Firestore.instance.collection('HotelLalitpur');

  final CollectionReference hotelpokharaCollection =
      Firestore.instance.collection('HotelPokhara');

  final CollectionReference hoteljanakpurCollection =
      Firestore.instance.collection('HotelJanakpur');

  final CollectionReference hotellumbiniCollection =
      Firestore.instance.collection('HotelLumbini');

  final CollectionReference hotelotherplaceCollection =
      Firestore.instance.collection('HotelOtherplace');

  final CollectionReference feedbackCollection =
      Firestore.instance.collection('Feedback');

  final CollectionReference bhaktapurbookingCollection =
      Firestore.instance.collection('BhaktapurHotelBooking');

  final CollectionReference kathmandubookingCollection =
      Firestore.instance.collection('KathmanduHotelBooking');

  final CollectionReference pokharabookingCollection =
      Firestore.instance.collection('PokharaHotelBooking');

  final CollectionReference lalitpurbookingCollection =
      Firestore.instance.collection('LalitpurHotelBooking');

  final CollectionReference janakpurbookingCollection =
      Firestore.instance.collection('JanakpurHotelBooking');

  final CollectionReference lumbinibookingCollection =
      Firestore.instance.collection('LumbiniHotelBooking');

  final CollectionReference othersplacebookingCollection =
      Firestore.instance.collection('OthersHotelBooking');

  Future updateUserData(
    String name,
    String info,
    String details,
    String imageurl,
  ) async {
    return await travelCollection.document(uid).setData({
      'name': name,
      'details': details,
      'info': info,
      'imageurl': imageurl,
    });
  }

  // travel list from snapshot
  List<Trave> _listFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Trave(
        name: doc.data['name'] ?? '',
        details: doc.data['details'] ?? '',
        bookmark: doc.data['details'] ?? '',
        imageurl: doc.data['details'] ?? '',
      );
    }).toList();
  }

  //get travel stream
  Stream<List<Trave>> get travels {
    return travelCollection.snapshots().map(_listFromSnapshot);
  }

  Stream<List<Bhaktapur>> get bhaktapurinfo {
    return bhaktapurCollection.snapshots().map(bhaktapur);
  }

  Stream<List<Kathmandu>> get kathmanduinfo {
    return kathmanduCollection.snapshots().map(kathmandu);
  }

  Stream<List<Adventure>> get adventureinfo {
    return adventureCollection.snapshots().map(adventure);
  }

  Stream<List<Pokhara>> get pokharainfo {
    return pokharaCollection.snapshots().map(pokhara);
  }

  Stream<List<Lalitpur>> get lalitpurinfo {
    return lalitpurCollection.snapshots().map(lalitpur);
  }

  Stream<List<Janakpur>> get janakpurinfo {
    return janakpurCollection.snapshots().map(janakpur);
  }

  Stream<List<Lumbini>> get lumbiniinfo {
    return lumbiniCollection.snapshots().map(lumbini);
  }

  Stream<List<Solukhumbhu>> get solukhumbhuinfo {
    return solukhumbhuCollection.snapshots().map(solukhumbhu);
  }

  Stream<List<Hotelbhaktapur>> get hotelbhaktapurinfo {
    return hotelbhaktapurCollection.snapshots().map(hotelbhaktapur);
  }

  Stream<List<Hotelkathmandu>> get hotelkathmanduinfo {
    return hotelkathmanduCollection.snapshots().map(hotelkathmandu);
  }

  Stream<List<Hotellalitpur>> get hotellalitpurinfo {
    return hotellalitpurCollection.snapshots().map(hotellalitpur);
  }

  Stream<List<Hotelpokhara>> get hotelpokharainfo {
    return hotelpokharaCollection.snapshots().map(hotelpokhara);
  }

  Stream<List<Hoteljanakpur>> get hoteljanakpurinfo {
    return hoteljanakpurCollection.snapshots().map(hoteljanakpur);
  }

  Stream<List<Hotellumbini>> get hotellumbiniinfo {
    return hotellumbiniCollection.snapshots().map(hotellumbini);
  }

  Stream<List<Hotelothers>> get hotelothersinfo {
    return hotelotherplaceCollection.snapshots().map(hotelothers);
  }

  List<Kathmandu> kathmandu(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Kathmandu(
        name: doc.data['name'] ?? '',
        info: doc.data['info'] ?? '',
        img: doc.data['img'] ?? '',
      );
    }).toList();
  }

  List<Adventure> adventure(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Adventure(
        name: doc.data['name'] ?? '',
        info: doc.data['info'] ?? '',
        img: doc.data['img'] ?? '',
      );
    }).toList();
  }

  List<Pokhara> pokhara(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Pokhara(
        name: doc.data['name'] ?? '',
        info: doc.data['info'] ?? '',
        img: doc.data['img'] ?? '',
      );
    }).toList();
  }

  List<Bhaktapur> bhaktapur(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Bhaktapur(
        name: doc.data['name'] ?? '',
        info: doc.data['info'] ?? '',
        img: doc.data['img'] ?? '',
      );
    }).toList();
  }

  List<Lalitpur> lalitpur(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Lalitpur(
        name: doc.data['name'] ?? '',
        info: doc.data['info'] ?? '',
        img: doc.data['img'] ?? '',
      );
    }).toList();
  }

  List<Janakpur> janakpur(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Janakpur(
        name: doc.data['name'] ?? '',
        info: doc.data['info'] ?? '',
        img: doc.data['img'] ?? '',
      );
    }).toList();
  }

  List<Lumbini> lumbini(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Lumbini(
        name: doc.data['name'] ?? '',
        info: doc.data['info'] ?? '',
        img: doc.data['img'] ?? '',
      );
    }).toList();
  }

  List<Solukhumbhu> solukhumbhu(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Solukhumbhu(
        name: doc.data['name'] ?? '',
        info: doc.data['info'] ?? '',
        img: doc.data['img'] ?? '',
      );
    }).toList();
  }

  List<Hotelbhaktapur> hotelbhaktapur(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Hotelbhaktapur(
        name: doc.data['name'] ?? '',
        desc: doc.data['desc'] ?? '',
        image: doc.data['image'] ?? '',
        price: doc.data['price'] ?? '',
      );
    }).toList();
  }

  List<Hotelkathmandu> hotelkathmandu(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Hotelkathmandu(
        name: doc.data['name'] ?? '',
        desc: doc.data['desc'] ?? '',
        image: doc.data['image'] ?? '',
        price: doc.data['price'] ?? '',
      );
    }).toList();
  }

  List<Hotellalitpur> hotellalitpur(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Hotellalitpur(
        name: doc.data['name'] ?? '',
        desc: doc.data['desc'] ?? '',
        image: doc.data['image'] ?? '',
        price: doc.data['price'] ?? '',
      );
    }).toList();
  }

  List<Hotelpokhara> hotelpokhara(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Hotelpokhara(
        name: doc.data['name'] ?? '',
        desc: doc.data['desc'] ?? '',
        image: doc.data['image'] ?? '',
        price: doc.data['price'] ?? '',
      );
    }).toList();
  }

  List<Hoteljanakpur> hoteljanakpur(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Hoteljanakpur(
        name: doc.data['name'] ?? '',
        desc: doc.data['desc'] ?? '',
        image: doc.data['image'] ?? '',
        price: doc.data['price'] ?? '',
      );
    }).toList();
  }

  List<Hotellumbini> hotellumbini(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Hotellumbini(
        name: doc.data['name'] ?? '',
        desc: doc.data['desc'] ?? '',
        image: doc.data['image'] ?? '',
        price: doc.data['price'] ?? '',
      );
    }).toList();
  }

  List<Hotelothers> hotelothers(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Hotelothers(
        name: doc.data['name'] ?? '',
        desc: doc.data['desc'] ?? '',
        image: doc.data['image'] ?? '',
        price: doc.data['price'] ?? '',
      );
    }).toList();
  }

  Future saveFeedback(double rating, String feedback) async {
    return await feedbackCollection.document().setData({
      'Rating': rating,
      'Feedback': feedback,
      'Date': DateTime.now(),
    });
  }

  // this is for add hotels list
  Future saveBhaktapurAdmin(
      String name, String image, String desc, String price) async {
    return await hotelbhaktapurCollection.document().setData({
      'name': name,
      'image': image,
      'desc': desc,
      'price': price,
      'Date': DateTime.now(),
    });
  }

  // this is for add hotels list
  Future saveAdmin(String email, String password) async {
    return await adminCollection.document().setData({
      'email': email,
      'password': password,
      'Date': DateTime.now(),
    });
  }

  Future saveKathmanduAdmin(
      String name, String image, String desc, String price) async {
    return await hotelkathmanduCollection.document().setData({
      'name': name,
      'image': image,
      'desc': desc,
      'price': price,
      'Date': DateTime.now(),
    });
  }

  Future saveLalitpurAdmin(
      String name, String image, String desc, String price) async {
    return await hotellalitpurCollection.document().setData({
      'name': name,
      'image': image,
      'desc': desc,
      'price': price,
      'Date': DateTime.now(),
    });
  }

  Future savePokharaAdmin(
      String name, String image, String desc, String price) async {
    return await hotelpokharaCollection.document().setData({
      'name': name,
      'image': image,
      'desc': desc,
      'price': price,
      'Date': DateTime.now(),
    });
  }

  Future saveJanakpurAdmin(
      String name, String image, String desc, String price) async {
    return await hoteljanakpurCollection.document().setData({
      'name': name,
      'image': image,
      'desc': desc,
      'price': price,
      'Date': DateTime.now(),
    });
  }

  Future saveLumbiniAdmin(
      String name, String image, String desc, String price) async {
    return await hotellumbiniCollection.document().setData({
      'name': name,
      'image': image,
      'desc': desc,
      'price': price,
      'Date': DateTime.now(),
    });
  }

  Future saveOthersAdmin(
      String name, String image, String desc, String price) async {
    return await hotelotherplaceCollection.document().setData({
      'name': name,
      'image': image,
      'desc': desc,
      'price': price,
      'Date': DateTime.now(),
    });
  }

//start
  Future bhaktapurbookings(
    String phoneno,
    String email,
    String name,
    selectedrooms,
    hotelname,
  ) async {
    return await bhaktapurbookingCollection.document().setData({
      'Username': name,
      'Email': email,
      'HotelName': hotelname,
      'Rooms': selectedrooms,
      'PhoneNumber': phoneno,
      'Date': DateTime.now(),
    });
  }
  //end

  //start
  Future kathmandubookings(
    String phoneno,
    String email,
    String name,
    selectedrooms,
    hotelname,
  ) async {
    return await kathmandubookingCollection.document().setData({
      'Username': name,
      'Email': email,
      'HotelName': hotelname,
      'Rooms': selectedrooms,
      'PhoneNumber': phoneno,
      'Date': DateTime.now(),
    });
  }
  //end

  //start
  Future lalitpurbookings(
    String phoneno,
    String email,
    String name,
    selectedrooms,
    hotelname,
  ) async {
    return await lalitpurbookingCollection.document().setData({
      'Username': name,
      'Email': email,
      'HotelName': hotelname,
      'Rooms': selectedrooms,
      'PhoneNumber': phoneno,
      'Date': DateTime.now(),
    });
  }
  //end

  //start
  Future pokharabookings(
    String phoneno,
    String email,
    String name,
    selectedrooms,
    hotelname,
  ) async {
    return await pokharabookingCollection.document().setData({
      'Username': name,
      'Email': email,
      'HotelName': hotelname,
      'Rooms': selectedrooms,
      'PhoneNumber': phoneno,
      'Date': DateTime.now(),
    });
  }
  //end

  Future janakpurbookings(
    String phoneno,
    String email,
    String name,
    selectedrooms,
    hotelname,
  ) async {
    return await janakpurbookingCollection.document().setData({
      'Username': name,
      'Email': email,
      'HotelName': hotelname,
      'Rooms': selectedrooms,
      'PhoneNumber': phoneno,
      'Date': DateTime.now(),
    });
  }
  //end

  Future lumbinibookings(
    String phoneno,
    String email,
    String name,
    selectedrooms,
    hotelname,
  ) async {
    return await lumbinibookingCollection.document().setData({
      'Username': name,
      'Email': email,
      'HotelName': hotelname,
      'Rooms': selectedrooms,
      'PhoneNumber': phoneno,
      'Date': DateTime.now(),
    });
  }
  //end

  Future othersplacebookings(
    String phoneno,
    String email,
    String name,
    selectedrooms,
    hotelname,
  ) async {
    return await othersplacebookingCollection.document().setData({
      'Username': name,
      'Email': email,
      'HotelName': hotelname,
      'Rooms': selectedrooms,
      'PhoneNumber': phoneno,
      'Date': DateTime.now(),
    });
  }
  //end
}
