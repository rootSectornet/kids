
import 'package:flutter/cupertino.dart';
import 'package:kids/menu.dart';
import 'package:kids/pages/belajar_hewan.dart';
import 'package:kids/pages/belajar_huruf.dart';
import 'package:kids/pages/belajar_number.dart';
import 'package:kids/pages/belajar_warna.dart';
import 'package:kids/pages/latihan_angka.dart';
import 'package:kids/pages/latihan_hewan.dart';
import 'package:kids/pages/latihan_huruf.dart';
import 'package:kids/pages/latihan_warna.dart';
import 'package:kids/second_menu.dart';

final routes = {
  '/' : (BuildContext context) => new Menu(),
  '/belajar_huruf' : (BuildContext context) => new Belajar_huruf(),
  '/belajar_number' : (BuildContext context) => new Belajar_number(),
  '/second_menu' : (BuildContext context) => new SecondMenu(),
  '/latihan_huruf' : (BuildContext context) => new LatihanHuruf(),
  '/belajar_hewan' : (BuildContext context) => new BelajarHewan(),
  '/belajar_warna' : (BuildContext context) => new BelajarWarna(),
  '/latihan_warna' : (BuildContext context) => new LatihanWarna(),
  '/latihan_angka' : (BuildContext context) => new LatihanAngka(),
  '/latihan_hewan' : (BuildContext context) => new LatihanHewan(),
};