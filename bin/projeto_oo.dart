import 'dart:ffi';

import 'package:projeto_oo/projeto_oo.dart' as projeto_oo;

//Projeto Automovel, crie classes Carro, Camionete, Caminhao que herdem da classe Automovel, implemente uma classe modificações que imprima que a pintura foi alterada.;


void main(){
  Carro celta = Carro("Celta", 890, "Prata", 2012, 4);
  Caminhao mercedes = Caminhao("Mercedes", 1100, "Branco", 2019, 2, "Bau");
  Camionete s10 = Camionete("S10", 900, "Preto", 2023, 4);

  print("Você tem um ${celta.nome}");

  celta.novaPintura();
}

class Automovel{
  String nome;
  double peso;
  String cor;
  int ano;
  int porta;

  Automovel(this.nome, this.peso, this.cor, this.ano, this.porta);

}
class Carro extends Automovel implements Modificacoes{

  Carro(String nome, double peso, String cor, int ano, int porta)
      : super(nome,peso,cor,ano,porta);

  @override
  void novaPintura() {
    print("Pintura Realizada com sucesso!");
  }

}

class Caminhao extends Automovel implements Modificacoes{

  String tipo;

  Caminhao(String nome, double peso, String cor, int ano, int porta, this.tipo)
      : super(nome,peso,cor,ano,porta);

  @override
  void novaPintura() {
    print("Pintura Realizada com sucesso!");
  }

}
class Camionete extends Automovel implements Modificacoes{

  Camionete(String nome, double peso, String cor, int ano, int porta)
      : super(nome,peso,cor,ano,porta);

  @override
  void novaPintura() {
    print("Pintura Realizada com sucesso!");
  }

}

abstract class Modificacoes{
  void novaPintura();
}