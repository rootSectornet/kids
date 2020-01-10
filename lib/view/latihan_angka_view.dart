
import 'package:kids/model/latihan_angka_model.dart';

abstract class LatihanAngkaView{
  void refreshData(LatihanAngkaModel latihanAngkaModel);
  void gantiSoal();
  void SelesaiSoal();
}