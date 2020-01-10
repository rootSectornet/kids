import 'dart:math';

import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:kids/model/latihan_angka_model.dart';
import 'package:kids/model/soal.dart';
import 'package:kids/util/music_util.dart';
import 'package:kids/view/latihan_angka_view.dart';

abstract class LatihanAngkapresenterAbstract{
  set view(LatihanAngkaView latihanAngkaView);
  void getRandomSoal();
  Future<bool> onWillpop();
  void Play();
  void Jawab(Soal soal,Jawaban jawaban);
  void Selesai();
}

class LatihanAngkaPresenter implements LatihanAngkapresenterAbstract{

  LatihanAngkaView _latihanAngkaView;
  LatihanAngkaModel _latihanAngkaModel;
  int panjangSoal = 0;
  LatihanAngkaPresenter(){
    this._latihanAngkaModel = new LatihanAngkaModel();
    this.panjangSoal = this._latihanAngkaModel.SoalLatihanAngka.length;
    this.getRandomSoal();
  }


  @override
  void set view(LatihanAngkaView latihanAngkaView) {
    // TODO: implement view
    this._latihanAngkaView = latihanAngkaView;
    this._latihanAngkaView.refreshData(this._latihanAngkaModel);
  }

  @override
  void getRandomSoal() {
    // TODO: implement getRandomSoal
    Random random = new Random();
    this._latihanAngkaModel.soal = this._latihanAngkaModel.SoalLatihanAngka[random.nextInt(this._latihanAngkaModel.SoalLatihanAngka.length)];
  }

  @override
  Future<bool> onWillpop() {
    // TODO: implement onWillpop
    MusicUtil.resumeMusic();
    return Future.value(true);
  }

  @override
  void Play() async {
    // TODO: implement Play
    bool a = await FlutterPluginTts.isLanguageAvailable("id-ID");
    if(a){
      FlutterPluginTts.setLanguage("id-ID");
    }
    FlutterPluginTts.speak(this._latihanAngkaModel.soal.textSoal);

  }

  @override
  void Jawab(Soal soal, Jawaban jawaban) {
    // TODO: implement Jawab
    if(jawaban.id == soal.jawaban){
      this._latihanAngkaModel.benar += 1;
      this._latihanAngkaModel.skor += (100 / this.panjangSoal).toInt();
    }else{
      this._latihanAngkaModel.salah += 1;
    }
    this._latihanAngkaModel.SoalLatihanAngka.removeAt(this._latihanAngkaModel.SoalLatihanAngka.indexOf(soal));
    if(this._latihanAngkaModel.SoalLatihanAngka.length == 0){
      this._latihanAngkaView.SelesaiSoal();
    }else{
      this._latihanAngkaView.gantiSoal();
      this.Play();
    }
    this._latihanAngkaView.refreshData(this._latihanAngkaModel);
  }

  @override
  void Selesai() async {
    // TODO: implement Selesai
    this._latihanAngkaModel.isDone = true;
    bool a = await FlutterPluginTts.isLanguageAvailable("id-ID");
    if(a){
      FlutterPluginTts.setLanguage("id-ID");
    }
    FlutterPluginTts.speak("Yeee Skor mu ${this._latihanAngkaModel.skor}, Benar ${this._latihanAngkaModel.benar}, Salah ${this._latihanAngkaModel.salah}");
  }



}