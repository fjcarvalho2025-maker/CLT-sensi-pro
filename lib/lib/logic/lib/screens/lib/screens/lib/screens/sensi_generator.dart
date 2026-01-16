TextInputType.number,
            ),
            DropdownButton<String>import 'package:flutter/material.dart';
import '../logic/sensi_calculator.dart';

class SensiGenerator extends StatefulWidget {
  const SensiGenerator({super.key});

  @override
  State<SensiGenerator> createState() => _SensiGeneratorState();
}

class _SensiGeneratorState extends State<SensiGenerator> {
  int dpi = 420;
  double tela = 6.6;
  String estilo = "Rush";
  Map<String, int>? resultado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gerador de Sensibilidade')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'DPI'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Tela (polegadas)'),
              keyboardType: TextInputType.number,
            ),
            DropdownButton<String>(
              value: estilo,
              items: const [
                DropdownMenuItem(value: "Rush", child: Text("Rush")),
                DropdownMenuItem(value: "Preciso", child: Text("Preciso")),
              ],
              onChanged: (v) => setState(() => estilo = v!),
            ),
            ElevatedButton(
              child: const Text('CALCULAR'),
              onPressed: () {
                setState(() {
                  resultado = calcularSensi(
                    dpi: dpi,
                    tela: tela,
                    estilo: estilo,
                  );
                });
              },
            ),
            if (resultado != null)
              ...resultado!.entries.map(
                (e) => Text("${e.key}: ${e.value}"),
              ),
          ],
        ),
      ),
    );
  }
}
