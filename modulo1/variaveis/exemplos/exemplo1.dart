void digaOla(String nome, Function callback) {
  print('Olá, $nome!');
  callback(nome);
}

var digaOlaAnonimo = (String nome) {
  print('Olá, $nome');
};

void main() {
  digaOla('Lucas', (String nome) {
    print('Olá, $nome');
  });
  digaOlaAnonimo('Lucas Anonimo');
}
