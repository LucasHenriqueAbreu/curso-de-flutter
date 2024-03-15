## Solução:
  ```dart
  class Motor {
    int potencia;

    Motor(this.potencia);

    void ligar() {
      print('Motor ligado!');
    }
  }

  class Carro {
    String marca;
    String modelo;
    int ano;
    String _numeroChassi;
    Motor motor;

    Carro(this.marca, this.modelo, this.ano, this._numeroChassi, this.motor);

    String get numeroChassi => _numeroChassi;

    void ligarCarro() {
      motor.ligar();
      print('Carro ligado!');
    }
  }
  ```