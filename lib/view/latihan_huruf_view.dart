import 'package:flutter/material.dart';
import 'package:kids/model/latihan_huruf_model.dart';

abstract class LatihanHurufView{
  void refreshData(LatihanHurufModel latihanHurufModel);
}