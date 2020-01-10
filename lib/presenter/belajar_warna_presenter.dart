import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:kids/model/belajar_warna_model.dart';
import 'package:kids/util/music_util.dart';
import 'package:kids/view/belajar_warna_view.dart';

abstract class Belajar_warna_presenter_abstract{
  set view(Belajar_warna_view belajar_warna_view);
  void BackTapped();
  void Play();
  void Reload();
  void Next();
  Future<bool> onWillpop();
}

class BelajarWarnaPresenter implements Belajar_warna_presenter_abstract{

  Belajar_warna_view _belajar_warna_view;
  Belajar_warna_model _belajar_warna_model;
  BelajarWarnaPresenter(){
    _belajar_warna_model = new Belajar_warna_model();
  }

  @override
  void set view(Belajar_warna_view belajar_warna_view) {
    // TODO: implement view
    this._belajar_warna_view = belajar_warna_view;
    this._belajar_warna_view.refreshData(this._belajar_warna_model);
  }

  @override
  void BackTapped() {
    // TODO: implement BackTapped
    this._belajar_warna_model.swipeKey.currentState.rewind();
    print(this._belajar_warna_model.swipeKey.currentState.currentIndex);
    this._belajar_warna_view.refreshData(this._belajar_warna_model);
  }

  @override
  void Play() async{
    // TODO: implement Play
    bool a = await FlutterPluginTts.isLanguageAvailable("id-ID");
    if(a){
      FlutterPluginTts.setLanguage("id-ID");
    }
    FlutterPluginTts.speak(this._belajar_warna_model.Listwarna[this._belajar_warna_model.swipeKey.currentState.currentIndex].suara);
//    print(this._belajar_huruf_model.hurufList[this._belajar_huruf_model.swipeKey.currentState.currentIndex].id);
  }

  @override
  void Reload() {
    // TODO: implement Reload

  }

  @override
  void Next() {
    // TODO: implement Next
    this._belajar_warna_model.swipeKey.currentState.swipeLeft();
  }

  @override
  Future<bool> onWillpop() {
    // TODO: implement onWillpop
    MusicUtil.resumeMusic();
    return Future.value(true);
  }

}