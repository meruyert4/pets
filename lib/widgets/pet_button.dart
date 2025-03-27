import 'package:flutter/material.dart';
import '../utils/audio_player.dart';

class PetButton extends StatelessWidget {
  final String petName;
  final String soundFile;

  const PetButton({super.key, required this.petName, required this.soundFile});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => playSound(soundFile),
      child: Text(petName),
    );
  }
}
