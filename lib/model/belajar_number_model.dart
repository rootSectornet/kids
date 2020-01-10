

import 'package:flutter/material.dart';
import 'package:swipe_stack/swipe_stack.dart';

class Number{
  int id;
  String images;
  String suara;
  String background;
  String nomor;
  Number({this.id,this.images,this.background,this.suara,this.nomor});
}

class Belajar_number_model{
  Number nomor;
  List<Number> hurufList = [
    new Number(
        id: 20,
        images: 'assets/images/number/DUA_PULUH.jpg',
        background: 'assets/images/number.jpg',
        suara: "ini Angka 20",
        nomor: "20"
    ),
    new Number(
        id: 19,
        images: 'assets/images/number/SEMBILAN_BELAS.jpg',
        background: 'assets/images/number.jpg',
        suara: "ini Angka 19",
        nomor: "19"
    ),
    new Number(
        id: 18,
        images: 'assets/images/number/DELAPAN_BELAS.jpg',
        background: 'assets/images/number.jpg',
        suara: "ini Angka 18",
        nomor: "18"
    ),
    new Number(
        id: 17,
        images: 'assets/images/number/TUJUH_BELAS.jpg',
        background: 'assets/images/number.jpg',
        suara: "ini Angka 17",
        nomor: "17"
    ),
    new Number(
        id: 16,
        images: 'assets/images/number/ENAM_BELAS.jpg',
        background: 'assets/images/number.jpg',
        suara: "ini Angka 16",
        nomor: "16"
    ),
    new Number(
        id: 15,
        images: 'assets/images/number/LIMA_BELAS.jpg',
        background: 'assets/images/number.jpg',
        suara: "ini Angka 15",
        nomor: "15"
    ),
    new Number(
        id: 14,
        images: 'assets/images/number/EMPAT_BELAS.jpg',
        background: 'assets/images/number.jpg',
        suara: "ini Angka 14",
        nomor: "14"
    ),
    new Number(
        id: 13,
        images: 'assets/images/number/TIGA_BELAS.jpg',
        background: 'assets/images/number.jpg',
        suara: "ini Angka 13",
        nomor: "13"
    ),
    new Number(
        id: 12,
        images: 'assets/images/number/DUA_BELAS.jpg',
        background: 'assets/images/number.jpg',
        suara: "ini Angka 12",
        nomor: "12"
    ),
    new Number(
        id: 11,
        images: 'assets/images/number/SEBELAS.jpg',
        background: 'assets/images/number.jpg',
        suara: "ini Angka 11",
        nomor: "11"
    ),
    new Number(
        id: 10,
        images: 'assets/images/number/SEPULUH.jpg',
        background: 'assets/images/number.jpg',
        suara: "ini Angka 10",
        nomor: "10"
    ),
    new Number(
        id: 9,
        images: 'assets/images/number/SEMBILAN.jpg',
        background: 'assets/images/number.jpg',
        suara: "ini Angka 9",
        nomor: "9"
    ),
    new Number(
        id: 8,
        images: 'assets/images/number/DELAPAN.jpg',
        background: 'assets/images/number.jpg',
        suara: "ini Angka 8",
        nomor: "8"
    ),
    new Number(
        id: 7,
        images: "assets/images/number/TUJUH.jpg",
        background: 'assets/images/number.jpg',
        suara: "ini Angka 7",
        nomor: "7"
    ),
    new Number(
        id: 6,
        images: "assets/images/number/ENAM.jpg",
        background: 'assets/images/number.jpg',
        suara: "ini Angka 6",
        nomor: "6"
    ),
    new Number(
        id: 5,
        images: "assets/images/number/LIMA.jpg",
        background: 'assets/images/number.jpg',
        suara: "ini Angka 5",
        nomor: "5"
    ),
    new Number(
        id: 4,
        images: "assets/images/number/EMPAT.jpg",
        background: 'assets/images/number.jpg',
        suara: "ini Angka 4",
        nomor: "4"
    ),
    new Number(
        id: 3,
        images: "assets/images/number/TIGA.jpg",
        background: 'assets/images/number.jpg',
        suara: "ini Angka 3",
        nomor: "3"
    ),
    new Number(
        id: 2,
        images: "assets/images/number/DUA.jpg",
        background: 'assets/images/number.jpg',
        suara: "ini Angka 2",
        nomor: "2"
    ),
    new Number(
        id: 1,
        images: "assets/images/number/SATU.jpg",
        background: 'assets/images/number.jpg',
        suara: "ini Angka 1",
        nomor: "1"
    ),
    new Number(
        id: 0,
        images: 'assets/images/number/NOL.jpg',
        background: 'assets/images/number.jpg',
        suara: "ini Angka 0",
        nomor: "0"
    ),
  ];
  final GlobalKey<SwipeStackState> swipeKey = GlobalKey<SwipeStackState>();
}