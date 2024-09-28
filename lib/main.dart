import 'package:agenda/views/cadastro.dart';
import 'package:flutter/material.dart';
import 'package:agenda/views/listagem.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Listagem(),
    );
  }
}
