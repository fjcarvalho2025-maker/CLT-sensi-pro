import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class TrickButton extends StatelessWidget {
  const TrickButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Botão Trick CLT')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(40),
            shape: const CircleBorder(),
          ),
          child: const Text('TRICK'),
          onPressed: () {
            Vibration.vibrate(duration: 60);
          },
        ),
      ),
    );
  }
}
