import 'package:flutter/cupertino.dart';
import 'package:flutter_app/admin/adminhoteljanakpur.dart';
import 'package:flutter_app/admin/adminhotelkathmandu.dart';
import 'package:flutter_app/admin/adminhotellalitpur.dart';
import 'package:flutter_app/admin/adminhotellumbini.dart';
import 'package:flutter_app/admin/adminhotelothers.dart';
import 'package:flutter_app/admin/adminhotelpokhara.dart';
import 'package:flutter_app/admin/adminpannel.dart';
import 'bhaktapurplaces.dart';

class RecommendedModel {
  String name;
  String image;
  RecommendedModel(this.name, this.image);
}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(item['name'], item['image']))
    .toList();

var recommendationsData = [
  {
    "name": "Chandragiri",
    "image": "assets/chandragiri.jpg",
  },
  {
    "name": "Gokyo Ri Lake, Solukhumbu",
    "image": "assets/gokyo.jpg",
  },
  {
    "name": "Phewa Lake, Pokhara",
    "image": "assets/pokh.jpg",
  },
  {
    "name": "Boudha, Kathmandu",
    "image": "assets/suya.jpg",
  },
  {
    "name": "Changu Narayan, Bhaktapur",
    "image": "assets/changu.jpg",
  },
  {
    "name": "Soyambhu, Kathamdu",
    "image": "assets/soyam1.jpg",
  },
  {
    "name": "Natapol ,Bhaktapur",
    "image": "assets/bkt2.jpg",
  },
  {
    "name": "Kathmandu Durbar Square",
    "image": "assets/kathamandu.jpg",
  },
];

class NearyouModel {
  String name;
  String image;
  NearyouModel(this.name, this.image);
}

List<NearyouModel> nearyouplaces = nearyoulist
    .map((item) => NearyouModel(item['name'], item['image']))
    .toList();

var nearyoulist = [
  {
    "name": "Boudha, Kathmandu",
    "image": "assets/suya.jpg",
  },
  {
    "name": "Basantapur, Kathmandu",
    "image": "assets/changu.jpg",
  },
  {
    "name": "Soyambhu, Kathmandu",
    "image": "assets/soyam.jpg",
  },
  {
    "name": "Hanuman dokha, Kathmandu",
    "image": "assets/bkt2.jpg",
  },
  {
    "name": "Taudha Lake, Kathmandu",
    "image": "assets/pokh.jpg",
  },
];

class PlacesList {
  String name;
  String image;
  var route;
  PlacesList(this.name, this.image, this.route);
}

List<PlacesList> places = placesData
    .map((item) => PlacesList(item['name'], item['image'], item['route']))
    .toList();

var placesData = [
  {
    "name": "Bhaktapur",
    "image": "assets/bhakt.jpeg",
    "route": Bhaktapurplaces(),
  },
  {
    "name": "Kathmandu",
    "image": "assets/kath.jpg",
    "route": Kathmanduplaces(),
  },
  {
    "name": "Pokhara",
    "image": "assets/pokh.jpg",
    "route": Pokharaplaces(),
  },
  {
    "name": "Adventure Sports",
    "image": "assets/adv1.jpeg",
    "route": Adventureplaces(),
  },
  {
    "name": "Lalitpur",
    "image": "assets/lalitpur.jpg",
    "route": Lalitpurplaces(),
  },
  {
    "name": "Janakpur",
    "image": "assets/janakpur.jpg",
    "route": Janakpurplaces(),
  },
  {
    "name": "Lumbini",
    "image": "assets/lumbini.jpg",
    "route": Lumbiniplaces(),
  },
  {
    "name": "Other Places",
    "image": "assets/gokyo.jpg",
    "route": Solukhumbhuplaces(),
  },
];

class Adventurelist1 {
  String name;
  String image;
  Adventurelist1(this.name, this.image);
}

List<Adventurelist1> advantures = adventuresData
    .map((item) => Adventurelist1(item['name'], item['image']))
    .toList();

var adventuresData = [
  {
    "name": "Bungee Jumping",
    "image": "assets/bunje.jpeg",
  },
  {
    "name": "Annapurna Base Camp",
    "image": "assets/anna.jpg",
  },
  {
    "name": "Everest Base Camp",
    "image": "assets/ever.jpg",
  },
  {
    "name": "Paragliding",
    "image": "assets/para.jpg",
  },
  {
    "name": "Ultralight Flghts",
    "image": "assets/ultra.jpeg",
  },
  {
    "name": "Zip Flying",
    "image": "assets/zip.jpg",
  },
];

//for bhaktapur hotels

class AdminList {
  String name;
  String image;
  var route;
  AdminList(this.name, this.image, this.route);
}

List<AdminList> adminlist = adminData
    .map((item) => AdminList(item['name'], item['image'], item['route']))
    .toList();

var adminData = [
  {
    "name": "Bhaktapur",
    "image": "assets/bhakt.jpeg",
    "route": AdminPannel(),
  },
  {
    "name": "Kathmandu",
    "image": "assets/kath.jpg",
    "route": AdminPannelKathmandu(),
  },
  {
    "name": "Pokhara",
    "image": "assets/pokh.jpg",
    "route": AdminPannelpokhara(),
  },
  {
    "name": "Lalitpur",
    "image": "assets/lalitpur.jpg",
    "route": AdminPannelLalitpur(),
  },
  {
    "name": "Janakpur",
    "image": "assets/janakpur.jpg",
    "route": AdminPanneljanakpur(),
  },
  {
    "name": "Lumbini",
    "image": "assets/lumbini.jpg",
    "route": AdminPannellumbini(),
  },
  {
    "name": "Other Places",
    "image": "assets/gokyo.jpg",
    "route": AdminPannelothers(),
  },
];
