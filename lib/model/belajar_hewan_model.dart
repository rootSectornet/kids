import 'package:flutter/material.dart';
import 'package:swipe_stack/swipe_stack.dart';

class Hewan{
  int id;
  String images;
  String suara;
  String background;
  String hewan;
  Hewan({this.id,this.images,this.background,this.suara,this.hewan});
}

class Belajar_hewan_model{
  Hewan hewan;
  List<Hewan> Listhewan = [
    new Hewan(
        id: 10,
        images: 'assets/images/hewan/ular.jpg',
        background: 'assets/images/hewan/ular.jpg',
        suara: "ini hewan ular",
        hewan: "ular"
    ),
    new Hewan(
        id: 9,
        images: 'assets/images/hewan/sapi.jpg',
        background: 'assets/images/hewan/sapi.jpg',
        suara: "ini hewan sapi",
        hewan: "sapi"
    ),
    new Hewan(
        id: 8,
        images: 'assets/images/hewan/kucing.jpg',
        background: 'assets/images/hewan/kucing.jpg',
        suara: "ini hewan kucing",
        hewan: "kucing"
    ),
    new Hewan(
        id: 7,
        images: 'assets/images/hewan/ikan.jpg',
        background: 'assets/images/hewan/ikan.jpg',
        suara: "ini hewan ikan",
        hewan: "ikan"
    ),
    new Hewan(
        id: 6,
        images: 'assets/images/hewan/harimau.jpg',
        background: 'assets/images/hewan/harimau.jpg',
        suara: "ini hewan harimau",
        hewan: "harimau"
    ),
    new Hewan(
        id: 5,
        images: 'assets/images/hewan/gajah.jpg',
        background: 'assets/images/hewan/gajah.jpg',
        suara: "ini hewan gajah",
        hewan: "gajah"
    ),
    new Hewan(
        id: 4,
        images: 'assets/images/hewan/burung.jpg',
        background: 'assets/images/hewan/burung.jpg',
        suara: "ini hewan burung",
        hewan: "burung"
    ),
    new Hewan(
        id: 3,
        images: 'assets/images/hewan/bebek.jpg',
        background: 'assets/images/hewan/bebek.jpg',
        suara: "ini hewan bebek",
        hewan: "bebek"
    ),
    new Hewan(
        id: 2,
        images: 'assets/images/hewan/anjing.jpg',
        background: 'assets/images/hewan/anjing.jpg',
        suara: "ini hewan anjing",
        hewan: "anjing"
    ),
    new Hewan(
        id: 1,
        images: 'assets/images/hewan/ayam.jpg',
        background: 'assets/images/hewan/ayam.jpg',
        suara: "ini hewan ayam",
        hewan: "ayam"
    ),
  ];
  final GlobalKey<SwipeStackState> swipeKey = GlobalKey<SwipeStackState>();

}