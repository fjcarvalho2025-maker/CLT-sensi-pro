import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dicas CLT')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          "• Não puxe demais\n"
          "• Ajuste 1 valor por vez\n"
          "• Treine 5 min por dia\n"
          "• DPI estável",
        ),
      ),
    );
  }
}
