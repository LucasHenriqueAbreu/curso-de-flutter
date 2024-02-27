class Coisa {
  late String nome;

  Coisa(String nome) {
    this.nome = nome;
  }
}

class Bola {

}

class Caixa<T> {
  late T coisa;
 
  Caixa(T coisa) {
    this.coisa = coisa;
  }
  mostrar() {
    print(this.coisa);
  }
}

main() {
  var coisa = new Coisa('Meia rasgada');
  var caixa = new Caixa(coisa);
  var caixa2 = new Caixa(new Bola());
  var caixa3 = new Caixa('Texto');
  caixa.mostrar();
  caixa2.mostrar();
  caixa3.mostrar();
}

