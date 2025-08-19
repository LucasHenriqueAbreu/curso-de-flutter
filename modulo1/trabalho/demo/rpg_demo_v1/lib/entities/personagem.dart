import 'package:rpg_demo_v1/entities/dado.dart';

class Personagem {
  String nome;
  int vida;
  int escudo;
  int velocidade;

  Personagem({
    required this.nome,
    required this.vida,
    required this.escudo,
    required this.velocidade,
  });

  void atacar(Personagem oponente, Dado dado) {
    final dano = dado.jogar();
    oponente.defender(dano);
  }
}
