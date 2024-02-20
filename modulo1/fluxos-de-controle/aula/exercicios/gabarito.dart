// Questão 1
void verificarParOuImpar(int numero) {
  if (numero % 2 == 0) {
    print("$numero é par.");
  } else {
    print("$numero é ímpar.");
  }
}

// Questão 2
void calcularSomaDeUmACem() {
  int soma = 0;
  for (int i = 1; i <= 100; i++) {
    soma += i;
  }
  print("A soma dos números de 1 a 100 é: $soma");
}

// Questão 3
void imprimirNumerosAteN(int n) {
  int contador = 1;
  while (contador <= n) {
    print(contador);
    contador++;
  }
}

// Questão 4
void adivinharNumero(int numero) {
  int numeroCorreto = 7; // Supondo que o número correto seja 7
  if (numero == numeroCorreto) {
    print("Parabéns, você acertou!");
  } else {
    print("Tente novamente!");
  }
}

// Questão 5
void imprimirNumerosDoUmAoDez() {
  int contador = 1;
  do {
    print(contador);
    contador++;
  } while (contador <= 10);
}

// Questão 6
void imprimirDiaDaSemana(int dia) {
  switch (dia) {
    case 1:
      print("Domingo");
      break;
    case 2:
      print("Segunda-feira");
      break;
    case 3:
      print("Terça-feira");
      break;
    case 4:
      print("Quarta-feira");
      break;
    case 5:
      print("Quinta-feira");
      break;
    case 6:
      print("Sexta-feira");
      break;
    case 7:
      print("Sábado");
      break;
    default:
      print("Número inválido para dia da semana.");
  }
}

// Questão 7
void calcularMedia(List<int> numeros) {
  int soma = 0;
  for (int numero in numeros) {
    soma += numero;
  }
  double media = soma / numeros.length;
  print("A média dos números é: $media");
}

// Questão 8
void imprimirNumerosPares() {
  for (int i = 2; i <= 20; i += 2) {
    print(i);
  }
}

// Questão 9
void verificarSenha(String senha) {
  if (senha == "12345") {
    print("Acesso concedido");
  } else {
    print("Senha incorreta, tente novamente!");
  }
}

// Questão 10
void imprimirDezAoUm() {
  int contador = 10;
  while (contador >= 1) {
    print(contador);
    contador--;
  }
}

void main() {
  // Testar as funções
  verificarParOuImpar(7); // Questão 1
  calcularSomaDeUmACem(); // Questão 2
  imprimirNumerosAteN(5); // Questão 3
  adivinharNumero(7); // Questão 4
  imprimirNumerosDoUmAoDez(); // Questão 5
  imprimirDiaDaSemana(3); // Questão 6
  calcularMedia([1, 2, 3, 4, 5]); // Questão 7
  imprimirNumerosPares(); // Questão 8
  verificarSenha("54321"); // Questão 9
  imprimirDezAoUm(); // Questão 10
}
