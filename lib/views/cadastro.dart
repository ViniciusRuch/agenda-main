// ignore_for_file: prefer_const_constructors

import 'package:agenda/model/contato.dart';
import 'package:agenda/model/repositorio_user.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget{
  const Cadastro({super.key});
  
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Cadastro'),),
      
        body: const FormExample(),
      ),
    );
  }
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  RepositorioUser rptUser = RepositorioUser();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    TextEditingController ctlNome = TextEditingController();
    TextEditingController ctlEmail = TextEditingController();
    TextEditingController ctlNumCel = TextEditingController();
    
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(controller: ctlNome,
            decoration: InputDecoration(labelText: 'Nome', hintText: 'Insira o nome'),
          ),
          TextField(controller: ctlEmail,
          decoration: InputDecoration(labelText: 'Email',hintText: 'xxx@xxx.com'),),
          TextField(controller: ctlNumCel, 
          decoration: InputDecoration(labelText: 'Numero de Celuar',hintText: '(xx)xxxx-xxxx'),),
          TextButton(onPressed: (){if(validacao(ctlNome, ctlEmail, ctlNumCel)){
            setState(() {
              Contato contato = Contato(nome: ctlNome.text, email: ctlEmail.text, numCel: ctlNumCel.text);
              rptUser.adduser(contato);
               
            });
          //Navigator.pop(context);
          }
            
          }, child: Text('Salvar'))
          ],
      ),
    );
  }

  bool validacao(TextEditingController ctNome,TextEditingController ctEmail,TextEditingController ctNumCel ){
    RegExp phoneRegExp = RegExp(r'^\(\d{2}\) \d{5}-\d{4}$');
    if(ctNome.text.isEmpty){
        showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text("Erro"),
            content: Text('Nome vazio'),
            actions: [
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ]);
    });
  }
  if(ctEmail.text.isEmpty){
        showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text("Erro"),
            content: Text('Email vazio'),
            actions: [
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ]);
    });
  }
  
  if(!phoneRegExp.hasMatch(ctNumCel.text)){
        showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text("Erro"),
            content: Text('numero de celular invalido'),
            actions: [
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ]);
    });
  }
  return true;
  }
}
  
