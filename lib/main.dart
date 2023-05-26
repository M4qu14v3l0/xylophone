import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('audios/note$soundNumber.wav'));
  }

  Widget buildKey({required int sound, required Color color}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(sound);
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Xylophone'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(sound: 1, color: Colors.pink),
          buildKey(sound: 2, color: Colors.red),
          buildKey(sound: 3, color: Colors.green),
          buildKey(sound: 4, color: Colors.yellow),
          buildKey(sound: 5, color: Colors.purple),
          buildKey(sound: 6, color: Colors.brown),
          buildKey(sound: 7, color: Colors.white),
        ],
      ),
    );
  }
}
