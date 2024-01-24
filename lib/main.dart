import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey({required int keyNumber, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(keyNumber);
        },
        child: Text(''),
        style: TextButton.styleFrom(backgroundColor: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(keyNumber: 1, color: Colors.red),
                  buildKey(keyNumber: 2, color: Colors.orange),
                  buildKey(keyNumber: 3, color: Colors.yellow),
                  buildKey(keyNumber: 4, color: Colors.green),
                  buildKey(keyNumber: 5, color: Colors.teal),
                  buildKey(keyNumber: 6, color: Colors.blue),
                  buildKey(keyNumber: 7, color: Colors.purple),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
