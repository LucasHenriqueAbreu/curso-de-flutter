import 'dart:math';

class Dado {
  final int _lados;

  Dado(this._lados);

  int jogar() {
    return Random().nextInt(_lados) + 1;
  }
}
