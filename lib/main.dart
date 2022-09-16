import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Column(
          children: [
            buildColorTile(Colors.red, 1),
            buildColorTile(Colors.orange, 2),
            buildColorTile(Colors.yellow, 3),
            buildColorTile(Colors.green, 4),
            buildColorTile(Colors.blue, 5),
            buildColorTile(Colors.indigo, 6),
            buildColorTile(Colors.purple, 7),
          ],
        ),
      ),
    );
  }

  Expanded buildColorTile(Color tileColor, int audioNum) {
    return Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                ),
                onPressed: () {
                  playAudio(audioNum);
                },
                child: Container(
                  color: tileColor,
                ),
              ),
            );
  }

  void playAudio(int num){
    final player = AudioPlayer();
    player.play(AssetSource("note$num.wav"));
  }

}
