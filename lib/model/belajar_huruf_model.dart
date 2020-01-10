

import 'package:flutter/material.dart';
import 'package:swipe_stack/swipe_stack.dart';

class Huruf{
  int id;
  String images;
  String suara;
  String background;
  String huruf;
  Huruf({this.id,this.images,this.background,this.suara,this.huruf});
}

class Belajar_huruf_model{
  Huruf huruf;
  List<Huruf> hurufList = [
    new Huruf(
        id: 26,
        images: 'assets/images/huruf/Z.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf Z",
        huruf: "Z"
    ),
    new Huruf(
        id: 25,
        images: 'assets/images/huruf/Y.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf Y",
        huruf: "Y"
    ),
    new Huruf(
        id: 24,
        images: 'assets/images/huruf/X.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf X",
        huruf: "X"
    ),
    new Huruf(
        id: 23,
        images: 'assets/images/huruf/W.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf W",
        huruf: "W"
    ),
    new Huruf(
        id: 22,
        images: 'assets/images/huruf/V.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf V",
        huruf: "V"
    ),
    new Huruf(
        id: 21,
        images: 'assets/images/huruf/U.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf U",
        huruf: "U"
    ),
    new Huruf(
        id: 20,
        images: 'assets/images/huruf/T.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf T",
        huruf: "T"
    ),
    new Huruf(
        id: 19,
        images: 'assets/images/huruf/S.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf S",
        huruf: "S"
    ),
    new Huruf(
        id: 18,
        images: 'assets/images/huruf/R.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf R",
        huruf: "R"
    ),
    new Huruf(
        id: 17,
        images: 'assets/images/huruf/Q.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf Q",
        huruf: "Q"
    ),
    new Huruf(
        id: 16,
        images: 'assets/images/huruf/P.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf P",
        huruf: "P"
    ),
    new Huruf(
        id: 15,
        images: 'assets/images/huruf/O.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf O",
        huruf: "O"
    ),
    new Huruf(
        id: 14,
        images: 'assets/images/huruf/N.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf N",
        huruf: "N"
    ),
    new Huruf(
        id: 13,
        images: 'assets/images/huruf/M.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf M",
        huruf: "M"
    ),
    new Huruf(
        id: 12,
        images: 'assets/images/huruf/L.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf L",
        huruf: "L"
    ),
    new Huruf(
        id: 11,
        images: 'assets/images/huruf/K.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf K",
        huruf: "K"
    ),
    new Huruf(
        id: 10,
        images: 'assets/images/huruf/J.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf J",
        huruf: "J"
    ),
    new Huruf(
        id: 9,
        images: 'assets/images/huruf/I.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf I",
        huruf: "I"
    ),
    new Huruf(
        id: 8,
        images: 'assets/images/huruf/H.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf H",
        huruf: "H"
    ),
    new Huruf(
        id: 7,
        images: 'assets/images/huruf/G.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf G",
        huruf: "G"
    ),
    new Huruf(
        id: 6,
        images: 'assets/images/huruf/F.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf F",
        huruf: "F"
    ),
    new Huruf(
        id: 5,
        images: 'assets/images/huruf/E.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf E",
        huruf: "E"
    ),
    new Huruf(
        id: 4,
        images: 'assets/images/huruf/D.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf D",
        huruf: "D"
    ),
    new Huruf(
        id: 3,
        images: 'assets/images/huruf/C.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf C",
        huruf: "C"
    ),
    new Huruf(
        id: 2,
        images: 'assets/images/huruf/B.jpg',
        background: 'assets/images/huruf.jpg',
        suara: "ini huruf B",
        huruf: "B"
    ),
    new Huruf(
      id: 1,
      images: "assets/images/huruf/A.jpg",
      background: 'assets/images/huruf.jpg',
      suara: "ini huruf A",
      huruf: "A"
    ),
  ];
  final GlobalKey<SwipeStackState> swipeKey = GlobalKey<SwipeStackState>();
}