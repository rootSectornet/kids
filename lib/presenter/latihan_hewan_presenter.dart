import 'dart:math';

import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:kids/model/latihan_warna_model.dart';
import 'package:kids/model/soal.dart';
import 'package:kids/util/music_util.dart';
import 'package:kids/view/latihan_warna_view.dart';

abstract class LatihanHewanpresenterAbstract{
  set view(LatihanWarnaView latihanWarnaView);
  void getRandomSoal();
  Future<bool> onWillpop();
  void Play();
  void Jawab(Soal soal,Jawaban jawaban);
  void Selesai();
}

class LatihanHewanPresenter implements LatihanHewanpresenterAbstract{

  LatihanWarnaView _latihanWarnaView;
  LatihanWarnaModel _latihanWarnaModel;
  int panjangSoal = 0;
  LatihanHewanPresenter(){
    this._latihanWarnaModel = new LatihanWarnaModel();
    this.panjangSoal = this._latihanWarnaModel.SoalLatihanHewan.length;
    this.getRandomSoal();
  }


  @override
  void set view(LatihanWarnaView latihanWarnaView) {
    // TODO: implement view
    this._latihanWarnaView = latihanWarnaView;
    this._latihanWarnaView.refreshData(this._latihanWarnaModel);
  }

  @override
  void getRandomSoal() {
    // TODO: implement getRandomSoal
    Random random = new Random();
    this._latihanWarnaModel.soal = this._latihanWarnaModel.SoalLatihanHewan[random.nextInt(this._latihanWarnaModel.SoalLatihanHewan.length)];
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
    FlutterPluginTts.speak(this._latihanWarnaModel.soal.textSoal);

  }

  @override
  void Jawab(Soal soal, Jawaban jawaban) {
    // TODO: implement Jawab
    if(jawaban.id == soal.jawaban){
      this._latihanWarnaModel.benar += 1;
      this._latihanWarnaModel.skor += (100 / this.panjangSoal).toInt();
    }else{
      this._latihanWarnaModel.salah += 1;
    }
    this._latihanWarnaModel.SoalLatihanHewan.removeAt(this._latihanWarnaModel.SoalLatihanHewan.indexOf(soal));
    if(this._latihanWarnaModel.SoalLatihanHewan.length == 0){
      this._latihanWarnaView.SelesaiSoal();
    }else{
      this._latihanWarnaView.gantiSoal();
      this.Play();
    }
    this._latihanWarnaView.refreshData(this._latihanWarnaModel);
  }

  @override
  void Selesai() async {
    // TODO: implement Selesai
    this._latihanWarnaModel.isDone = true;
    bool a = await FlutterPluginTts.isLanguageAvailable("id-ID");
    if(a){
      FlutterPluginTts.setLanguage("id-ID");
    }
    FlutterPluginTts.speak("Yeee Skor mu ${this._latihanWarnaModel.skor}, Benar ${this._latihanWarnaModel.benar}, Salah ${this._latihanWarnaModel.salah}");
  }



}