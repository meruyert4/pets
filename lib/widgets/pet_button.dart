import 'package:flutter/material.dart';
import '../utils/audio_player.dart';

class PetButton extends StatelessWidget {
  final String petName;
  final String soundFile;
  final Color color;

  const PetButton({super.key, required this.petName, required this.soundFile, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: ElevatedButton(
        onPressed: () => playSound(soundFile),
        style: ElevatedButton.styleFrom(
          backgroundColor: color.withOpacity(0.9), 
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 6, 
          shadowColor: Colors.black26,
        ),
        child: Text(
          petName,
          style: const TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
