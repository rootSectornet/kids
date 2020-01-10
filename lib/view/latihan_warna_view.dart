import 'package:kids/model/latihan_warna_model.dart';

abstract class LatihanWarnaView{
  void refreshData(LatihanWarnaModel latihanWarnaModel);
  void gantiSoal();
  void SelesaiSoal();
}