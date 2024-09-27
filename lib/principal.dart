import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          body: Center(child: ElevatedButton(onPressed: (){}, child: const Text('Cadastro')),),
          ),

      );
    
  }
  
}