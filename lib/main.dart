import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(const CLTSensiApp());
}

class CLTSensiApp extends StatelessWidget {
  const CLTSensiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CLT Sensi Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red,
      ),
      home: const HomeScreen(),
    );
  }
}
