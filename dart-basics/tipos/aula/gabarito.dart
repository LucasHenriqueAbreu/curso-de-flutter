void main() {
  // 1. Calculadora de IMC:
  double altura = 1.75;
  int peso = 70;
  double imc = peso / (altura * altura);
  print('Seu IMC é: $imc');

  // 2. Concatenação de Nomes:
  String primeiroNome = 'João';
  String ultimoNome = 'Silva';
  String nomeCompleto = primeiroNome + ' ' + ultimoNome;
  print('Nome completo: $nomeCompleto');

  // 3. Verificação de Maioridade:
  int idade = 25;
  bool maiorDeIdade = idade >= 18;
  print('É maior de idade? $maiorDeIdade');

  // 4. Lista de Compras:
  List<String> listaDeCompras = ['Maçã', 'Banana', 'Pão'];
  print('Lista de compras: $listaDeCompras');

  // 5. Cálculo de Desconto:
  double precoOriginal = 50.0;
  double desconto = 10.0;
  double precoFinal = precoOriginal - desconto;
  print('Preço final após desconto: $precoFinal');

  // 6. Verificação de Disponibilidade:
  Map<String, bool> disponibilidade = {
    'Maçã': true,
    'Banana': false,
    'Pão': true
  };
  String produto = 'Banana';
  print('O produto $produto está disponível? ${disponibilidade[produto]}');

  // 7. Conversor de Temperatura:
  double temperaturaCelsius = 25.0;
  double temperaturaFahrenheit = (temperaturaCelsius * 9 / 5) + 32;
  print('Temperatura em Fahrenheit: $temperaturaFahrenheit');

  // 8. Adivinhe o Número:
  int numeroAleatorio = 73;
  int palpiteDoUsuario = 50;
  if (palpiteDoUsuario == numeroAleatorio) {
    print('Parabéns! Você acertou o número.');
  } else if (palpiteDoUsuario < numeroAleatorio) {
    print('O palpite é muito baixo.');
  } else {
    print('O palpite é muito alto.');
  }

  // 9. Contador de Caracteres:
  String frase = 'Olá, mundo!';
  int numeroDeCaracteres = frase.length;
  print('Número de caracteres na frase: $numeroDeCaracteres');

  // 10. Registro de Notas:
  Map<String, double> notas = {'João': 8.5, 'Maria': 9.0, 'Pedro': 7.8};
  print('Registro de notas: $notas');
}
