import 'package:flutter/material.dart';
import '../widgets/pet_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pet Sounds")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PetButton(petName: "Dog", soundFile: "dog_bark.mp3"),
            PetButton(petName: "Cat", soundFile: "cat_meow.mp3"),
            PetButton(petName: "Bird", soundFile: "bird_chirp.mp3"),
            PetButton(petName: "Cow", soundFile: "cow_moo.mp3"),
            PetButton(petName: "Sheep", soundFile: "sheep_baa.mp3"),
          ],
        ),
      ),
    );
  }
}
