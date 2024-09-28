import 'package:agenda/model/contato.dart';

class RepositorioUser {
  List<Contato> listadeuser = [];

  void adduser(Contato u){
    listadeuser.add(u);
  }

  List<Contato> getLista(){
    return listadeuser;
  }

  void removerLista(int index){
    listadeuser.removeAt(index);
  }
}