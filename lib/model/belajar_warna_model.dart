import 'package:flutter/material.dart';
import 'package:swipe_stack/swipe_stack.dart';

class Warna{
  int id;
  String images;
  String suara;
  String background;
  String warna;
  Warna({this.id,this.images,this.background,this.suara,this.warna});
}

class Belajar_warna_model{
  Warna warna;
  List<Warna> Listwarna = [
    new Warna(
        id: 10,
        images: 'assets/images/warna/ungu.jpg',
        background: 'assets/images/warna/ungu.jpg',
        suara: "ini warna ungu",
        warna: "ungu"
    ),
    new Warna(
        id: 9,
        images: 'assets/images/warna/merah_muda.jpg',
        background: 'assets/images/warna/merah_muda.jpg',
        suara: "ini warna merah muda",
        warna: "merah muda"
    ),
    new Warna(
        id: 8,
        images: 'assets/images/warna/merah.jpg',
        background: 'assets/images/warna/merah.jpg',
        suara: "ini warna merah",
        warna: "merah"
    ),
    new Warna(
        id: 7,
        images: 'assets/images/warna/kuning.jpg',
        background: 'assets/images/warna/kuning.jpg',
        suara: "ini warna kuning",
        warna: "kuning"
    ),
    new Warna(
        id: 6,
        images: 'assets/images/warna/jingga.jpg',
        background: 'assets/images/warna/jingga.jpg',
        suara: "ini warna jingga",
        warna: "jingga"
    ),
    new Warna(
        id: 5,
        images: 'assets/images/warna/hitam.jpg',
        background: 'assets/images/warna/hitam.jpg',
        suara: "ini warna hitam",
        warna: "hitam"
    ),
    new Warna(
        id: 4,
        images: 'assets/images/warna/hijau.jpg',
        background: 'assets/images/warna/hijau.jpg',
        suara: "ini warna hijau",
        warna: "hijau"
    ),
    new Warna(
        id: 3,
        images: 'assets/images/warna/coklat.jpg',
        background: 'assets/images/warna/coklat.jpg',
        suara: "ini warna coklat",
        warna: "coklat"
    ),
    new Warna(
        id: 2,
        images: 'assets/images/warna/biru.jpg',
        background: 'assets/images/warna/biru.jpg',
        suara: "ini warna biru",
        warna: "biru"
    ),
    new Warna(
        id: 1,
        images: 'assets/images/warna/abu_abu.jpg',
        background: 'assets/images/warna/abu_abu.jpg',
        suara: "ini warna abu abu",
        warna: "abu abu"
    ),
  ];
  final GlobalKey<SwipeStackState> swipeKey = GlobalKey<SwipeStackState>();

}