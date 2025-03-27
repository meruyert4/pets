import 'package:flutter/material.dart';
import '../widgets/pet_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.pets, 
              size: 32, 
              color: Color(0xFF3A6EA5)
            ),
            const SizedBox(width: 12),
            Text(
              "Pet Sounds",
              style: TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.w700,
                color: Colors.black87,
                letterSpacing: 1.2
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Tap on a pet to hear its sound!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.center,
              children: [
                PetButton(
                  petName: "Dog 🐶", 
                  soundFile: "dog_bark.mp3", 
                  color: const Color.fromARGB(255, 112, 209, 242)
                ),
                PetButton(
                  petName: "Cat 🐱", 
                  soundFile: "cat_meow.mp3", 
                  color: const Color.fromARGB(255, 242, 199, 129)
                ),
                PetButton(
                  petName: "Bird 🐦", 
                  soundFile: "bird_chirp.mp3", 
                  color: const Color.fromARGB(255, 152, 249, 244)
                ),
                PetButton(
                  petName: "Cow 🐮", 
                  soundFile: "cow_moo.mp3", 
                  color: const Color.fromARGB(255, 134, 188, 242)
                ),
                PetButton(
                  petName: "Sheep 🐑", 
                  soundFile: "sheep_baa.mp3", 
                  color: const Color.fromARGB(255, 244, 213, 118)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}