Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TipsScreen()),
              ),
            ),
          ],
        ),
      ),
    )import 'package:flutter/material.dart';
import 'sensi_generator.dart';
import 'trick_button.dart';
import 'tips.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CLT Sensi Pro')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Gerar Sensibilidade'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SensiGenerator()),
              ),
            ),
            ElevatedButton(
              child: const Text('Botão Trick CLT'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TrickButton()),
              ),
            ),
            ElevatedButton(
              child: const Text('Dicas CLT'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TipsScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
