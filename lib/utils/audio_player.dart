import 'package:audioplayers/audioplayers.dart';

final AudioPlayer player = AudioPlayer();

void playSound(String soundFile) async {
  await player.play(AssetSource("sounds/$soundFile")); 
}
