import 'package:audioplayers/audioplayers.dart';

Future<void> playSound(String soundFile) async {
  final player = AudioPlayer();
  final filePath = "sounds/$soundFile";

  try {
    await player.play(AssetSource(filePath));
  } catch (e) {
    print("Error playing sound: $e");
  }
}
