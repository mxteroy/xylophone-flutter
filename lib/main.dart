import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded playSound(String file, Color color) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            final player = AudioCache();
            player.play(file);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                playSound('note1.wav', Colors.red),
                playSound('note2.wav', Colors.orange),
                playSound('note3.wav', Colors.yellow),
                playSound('note4.wav', Colors.green),
                playSound('note5.wav', Colors.blue),
                playSound('note6.wav', Colors.indigo),
                playSound('note7.wav', Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
