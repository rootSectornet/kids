import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart' as prefix0;
import 'package:kids/model/belajar_huruf_model.dart';
import 'package:kids/util/music_util.dart';
import 'package:kids/view/belajar_huruf_view.dart';

abstract class Belajar_huruf_presenter_abstract{
  set view(Belajar_huruf_view belajar_huruf_view);
  void BackTapped();
  void Play();
  void Reload();
  void Next();
  Future<bool> onWillpop();
}

class BelajarHurufPresenter implements Belajar_huruf_presenter_abstract{

  Belajar_huruf_view _belajar_huruf_view;
  Belajar_huruf_model _belajar_huruf_model;
  BelajarHurufPresenter(){
    _belajar_huruf_model = new Belajar_huruf_model();
  }

  @override
  void set view(Belajar_huruf_view belajar_huruf_view) {
    // TODO: implement view
    this._belajar_huruf_view = belajar_huruf_view;
    this._belajar_huruf_view.refreshData(this._belajar_huruf_model);
  }

  @override
  void BackTapped() {
    // TODO: implement BackTapped
    this._belajar_huruf_model.swipeKey.currentState.rewind();
    print(this._belajar_huruf_model.swipeKey.currentState.currentIndex);
    this._belajar_huruf_view.refreshData(this._belajar_huruf_model);
  }

  @override
  void Play() async{
    // TODO: implement Play
    bool a = await FlutterPluginTts.isLanguageAvailable("id-ID");
    if(a){
      prefix0.FlutterPluginTts.setLanguage("id-ID");
    }
    FlutterPluginTts.speak(this._belajar_huruf_model.hurufList[this._belajar_huruf_model.swipeKey.currentState.currentIndex].suara);
//    print(this._belajar_huruf_model.hurufList[this._belajar_huruf_model.swipeKey.currentState.currentIndex].id);
  }

  @override
  void Reload() {
    // TODO: implement Reload

  }

  @override
  void Next() {
    // TODO: implement Next
    this._belajar_huruf_model.swipeKey.currentState.swipeLeft();
  }

  @override
  Future<bool> onWillpop() {
    // TODO: implement onWillpop
    MusicUtil.resumeMusic();
    return Future.value(true);
  }

}