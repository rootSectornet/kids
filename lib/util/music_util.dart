import 'package:assets_audio_player/assets_audio_player.dart';

class MusicUtil{

  static AssetsAudioPlayer assetsAudioPlayer = new AssetsAudioPlayer();

  static void playMusic(){
    assetsAudioPlayer.open(
      AssetsAudio(
        asset: "lagu.mp3",
        folder: "assets/audios/",
      ),
    );
    assetsAudioPlayer.playOrPause();
  }
  static void pauseMusic(){
    assetsAudioPlayer.pause();
  }
  static void resumeMusic(){
    assetsAudioPlayer.play();
  }

  static void stopMusic(){
    assetsAudioPlayer.stop();
  }
}