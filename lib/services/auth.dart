import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/user.dart';
import 'package:flutter_app/services/database.dart';
import 'package:google_sign_in/google_sign_in.dart';

//for google signin
class AuthService {
  final GoogleSignIn google = new GoogleSignIn();
  Future<FirebaseUser> googleSignIn(BuildContext context) async {
    try {
      final GoogleSignInAccount user = await google.signIn();
      final GoogleSignInAuthentication _gauth = await user.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: _gauth.accessToken,
        idToken: _gauth.idToken,
      );

      AuthResult userDetails = await _auth.signInWithCredential(credential);
      ProviderDetails providerInfo =
          new ProviderDetails(userDetails.user.providerId);

      List<ProviderDetails> providerData = new List<ProviderDetails>();
      providerData.add(providerInfo);

      UserDetails details = new UserDetails(
        userDetails.user.providerId,
        userDetails.user.displayName,
        userDetails.user.photoUrl,
        userDetails.user.email,
        providerData,
      );
      FirebaseUser _user = await _auth.currentUser();
      //create a new document for the user with uid
      await DatabaseService(uid: _user.uid)
          .updateUserData('Username', ' new member ', 'details', 'imageurl');
      return userDetails.user;
    } catch (e) {
      return null;
    }
  }

  //For google signin
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //create user obj based on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

// auth change user change
  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

//sign in anonys
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //for signing out
  Future sigmOut() async {
    try {
      FirebaseUser user = await _auth.currentUser();
      if (user.providerData[1].providerId == 'google.com') {
        await google.signOut();
        return await _auth.signOut();
      } else {
        return await _auth.signOut();
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //for signup with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;

      //create a new document for the user with uid
      await DatabaseService(uid: user.uid)
          .updateUserData('Username', ' new member ', 'details', 'imageurl');
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //for signin with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //for signin with email and password
  Future signInWithEmailAndPasswordadmin(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: "test@gmail.com", password: "123456");
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future reset(String email) async {
    _auth.sendPasswordResetEmail(email: email);
  }

//for feebacks
  Future saveFeedback(rating, feedback) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid).saveFeedback(rating, feedback);
      return 'success';
    } catch (e) {
      return null;
    }
  }

//for adding hotels bhaktapur
  Future saveBhaktapurAdmin(name, desc, image, price) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid)
          .saveBhaktapurAdmin(name, desc, image, price);
      return 'success';
    } catch (e) {
      return null;
    }
  }

  Future saveAdmin(email, password) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid).saveAdmin(email, password);
      return 'success';
    } catch (e) {
      return null;
    }
  }

  //for adding hotels kathmandu
  Future saveKathmanduAdmin(name, desc, image, price) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid)
          .saveKathmanduAdmin(name, desc, image, price);
      return 'success';
    } catch (e) {
      return null;
    }
  }

  //for adding hotels Lalitpur
  Future saveLalitpurAdmin(name, desc, image, price) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid)
          .saveLalitpurAdmin(name, desc, image, price);
      return 'success';
    } catch (e) {
      return null;
    }
  }

//for adding hotels Pokhara
  Future savePokharaAdmin(name, desc, image, price) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid)
          .savePokharaAdmin(name, desc, image, price);
      return 'success';
    } catch (e) {
      return null;
    }
  }

  //for adding hotels Janakpur
  Future saveJanakpurAdmin(name, desc, image, price) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid)
          .saveJanakpurAdmin(name, desc, image, price);
      return 'success';
    } catch (e) {
      return null;
    }
  }

  //for adding hotels Lumbini
  Future saveLumbiniAdmin(name, desc, image, price) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid)
          .saveLumbiniAdmin(name, desc, image, price);
      return 'success';
    } catch (e) {
      return null;
    }
  }

  //for adding hotels Others
  Future saveOthersAdmin(name, desc, image, price) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid)
          .saveOthersAdmin(name, desc, image, price);
      return 'success';
    } catch (e) {
      return null;
    }
  }

//for booking
  Future bhaktapurbookings(
    name,
    email,
    phoneno,
    _selectedrooms,
    hotelname,
  ) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid).bhaktapurbookings(
        name,
        email,
        phoneno,
        _selectedrooms,
        hotelname,
      );
      return 'success';
    } catch (e) {
      return null;
    }
  }

  //for booking
  Future kathmandubookings(
    name,
    email,
    phoneno,
    _selectedrooms,
    hotelname,
  ) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid).kathmandubookings(
        name,
        email,
        phoneno,
        _selectedrooms,
        hotelname,
      );
      return 'success';
    } catch (e) {
      return null;
    }
  }
  //end

  //for booking
  Future lalitpurbookings(
    name,
    email,
    phoneno,
    _selectedrooms,
    hotelname,
  ) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid).lalitpurbookings(
        name,
        email,
        phoneno,
        _selectedrooms,
        hotelname,
      );
      return 'success';
    } catch (e) {
      return null;
    }
  }
  //end

  //for booking
  Future pokharabookings(
    name,
    email,
    phoneno,
    _selectedrooms,
    hotelname,
  ) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid).pokharabookings(
        name,
        email,
        phoneno,
        _selectedrooms,
        hotelname,
      );
      return 'success';
    } catch (e) {
      return null;
    }
  }
  //end

  //for booking
  Future janakpurbookings(
    name,
    email,
    phoneno,
    _selectedrooms,
    hotelname,
  ) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid).janakpurbookings(
        name,
        email,
        phoneno,
        _selectedrooms,
        hotelname,
      );
      return 'success';
    } catch (e) {
      return null;
    }
  }
  //end

  //for booking
  Future lumbinibookings(
    name,
    email,
    phoneno,
    _selectedrooms,
    hotelname,
  ) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid).lumbinibookings(
        name,
        email,
        phoneno,
        _selectedrooms,
        hotelname,
      );
      return 'success';
    } catch (e) {
      return null;
    }
  }

  //end
  //for booking
  Future othersplacebookings(
    name,
    email,
    phoneno,
    _selectedrooms,
    hotelname,
  ) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await DatabaseService(uid: user.uid).othersplacebookings(
        name,
        email,
        phoneno,
        _selectedrooms,
        hotelname,
      );
      return 'success';
    } catch (e) {
      return null;
    }
  }
  //end
}

//for googleSignin
class UserDetails {
  final String providerDetails;
  final String userName;
  final String photoUrl;
  final String userEmail;
  final List<ProviderDetails> providerData;

  UserDetails(this.providerDetails, this.userName, this.photoUrl,
      this.userEmail, this.providerData);
}

class ProviderDetails {
  ProviderDetails(this.providerDetails);
  final String providerDetails;
}
