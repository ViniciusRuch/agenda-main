// ignore_for_file: prefer_const_constructors

import 'package:agenda/model/contato.dart';
import 'package:agenda/model/repositorio_user.dart';
import 'package:agenda/views/cadastro.dart';
import 'package:flutter/material.dart';

class Listagem extends StatefulWidget {
  const Listagem({super.key});
  

  @override
  State<Listagem> createState() => _ListagemState();
}

class _ListagemState extends State<Listagem> {
  RepositorioUser rptUser =RepositorioUser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista')),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: 
              ListView.builder(
                itemCount:rptUser.getLista().length,
                itemBuilder: (context, index){
                  Contato c = rptUser.getLista()[index];
                  return ListTile(
                    title: Text(c.getNome()),
                    subtitle: Text('Numero Cel: ${c.getNumCel()}; Email: ${c.getEmail()}'),
                  );
                })),
                TextButton(onPressed: () async{
                   final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Cadastro()));
                }, child: Text('Cadastro'))

          ],
        ),
      ),
    );
  }
}