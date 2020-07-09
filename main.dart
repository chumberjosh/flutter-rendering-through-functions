import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  buildKey(int sound, color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(sound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.yellow),
              buildKey(3, Colors.orange),
              buildKey(4, Colors.blue),
              buildKey(5, Colors.green),
              buildKey(6, Colors.purple),
              buildKey(7, Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
