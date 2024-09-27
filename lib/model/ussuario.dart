class Ussuario {
  String nome;
   String email;
   String numCel;

  Ussuario({
    required this.nome,
    required this.email,
    required this.numCel
  });
  void setNome(String nome) {
    this.nome = nome;
  }

  String getNome() {
    return nome;
  }

  void setNumCel(String numCel) {
    this.numCel = numCel;
  }

  String getNumCel() {
    return numCel;
  }

  void setEmail(String email) {
    this.email = email;
  }

  String getEmail() {
    return email;
  }  
}