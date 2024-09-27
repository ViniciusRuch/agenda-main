import 'package:flutter/material.dart';
import 'package:agenda/views/cadastro.dart';
class Principal extends StatelessWidget {
  const Principal({super.key});
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(centerTitle: true,title: const Text('Agenda'),),
          body: Column(children: [FloatingActionButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => const Cadastro()));
                }, child: const Text('Cadastro')),
                FloatingActionButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                builder: (context) => const Cadastro()));
                }, child: const Text('Listar')),
                
                ],),
                
          ),

      );
    
  }
  
}