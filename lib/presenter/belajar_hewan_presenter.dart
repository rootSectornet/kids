import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:kids/model/belajar_hewan_model.dart';
import 'package:kids/model/belajar_huruf_model.dart';
import 'package:kids/util/music_util.dart';
import 'package:kids/view/belajar_hewan_view.dart';
import 'package:kids/view/belajar_huruf_view.dart';

abstract class Belajar_hewan_presenter_abstract{
  set view(Belajar_hewan_view belajar_hewan_view);
  void BackTapped();
  void Play();
  void Reload();
  void Next();
  Future<bool> onWillpop();
}

class BelajarHewanPresenter implements Belajar_hewan_presenter_abstract{

  Belajar_hewan_view _belajar_hewan_view;
  Belajar_hewan_model _belajar_hewan_model;
  BelajarHewanPresenter(){
    _belajar_hewan_model = new Belajar_hewan_model();
  }

  @override
  void set view(Belajar_hewan_view belajar_hewan_view) {
    // TODO: implement view
    this._belajar_hewan_view = belajar_hewan_view;
    this._belajar_hewan_view.refreshData(this._belajar_hewan_model);
  }

  @override
  void BackTapped() {
    // TODO: implement BackTapped
    this._belajar_hewan_model.swipeKey.currentState.rewind();
    print(this._belajar_hewan_model.swipeKey.currentState.currentIndex);
    this._belajar_hewan_view.refreshData(this._belajar_hewan_model);
  }

  @override
  void Play() async{
    // TODO: implement Play
    bool a = await FlutterPluginTts.isLanguageAvailable("id-ID");
    if(a){
      FlutterPluginTts.setLanguage("id-ID");
    }
    FlutterPluginTts.speak(this._belajar_hewan_model.Listhewan[this._belajar_hewan_model.swipeKey.currentState.currentIndex].suara);
//    print(this._belajar_huruf_model.hurufList[this._belajar_huruf_model.swipeKey.currentState.currentIndex].id);
  }

  @override
  void Reload() {
    // TODO: implement Reload

  }

  @override
  void Next() {
    // TODO: implement Next
    this._belajar_hewan_model.swipeKey.currentState.swipeLeft();
  }

  @override
  Future<bool> onWillpop() {
    // TODO: implement onWillpop
    MusicUtil.resumeMusic();
    return Future.value(true);
  }

}