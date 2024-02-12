// I. Introdução às Funções

// 1. Criar uma função `sayGoodbye` que imprima "Até logo!" e chamá-la a partir da função `main`.
void sayGoodbye() {
  print('Até logo!');
}

// II. Tipos de Funções

// 2. Escrever a função `calculateArea` para calcular a área de um círculo com base no raio.
double calculateArea(double raio) {
  return 3.14 * raio * raio;
}

// 3. Utilizar uma função anônima para imprimir os números pares de 1 a 10.
void printNumbers() {
  Function printEvenNumbers = () {
    for (int i = 1; i <= 10; i++) {
      if (i % 2 == 0) {
        print(i);
      }
    }
  };
  printEvenNumbers();
}

// III. Parâmetros e Retorno

// 4. Modificar a função `greetUser` para receber idade e imprimir uma saudação personalizada.
void greetUser(String nome, int idade) {
  print('Olá, $nome! Você tem $idade anos.');
}

// 5. Criar a função `calculateSum` que some os números em uma lista passada como parâmetro.
int calculateSum(List<int> numeros) {
  int soma = 0;
  for (int numero in numeros) {
    soma += numero;
  }
  return soma;
}

// IV. Funções Recursivas

// 6. Escrever a função `calculatePower` para calcular a potência de um número base elevado a um expoente.
int calculatePower(int base, int expoente) {
  if (expoente == 0) {
    return 1;
  } else {
    return base * calculatePower(base, expoente - 1);
  }
}

// 7. Implementar uma função recursiva para calcular o \( n \)-ésimo termo da sequência de Fibonacci.
int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

// V. Exercícios Práticos

// 8. Criar uma função que inverta uma string passada como argumento.
String reverseString(String frase) {
  return frase.split('').reversed.join('');
}

// 9. Implementar uma função para verificar se um número é primo ou não.
bool isPrime(int numero) {
  if (numero <= 1) {
    return false;
  }
  for (int i = 2; i <= numero / 2; i++) {
    if (numero % i == 0) {
      return false;
    }
  }
  return true;
}

// VI. Aplicações Avançadas

// 10. Desenvolver uma função que receba uma lista de palavras e retorne outra com palavras que tenham mais de três letras.
List<String> filterWords(List<String> palavras) {
  List<String> result = [];
  for (String palavra in palavras) {
    if (palavra.length > 3) {
      result.add(palavra);
    }
  }
  return result;
}

// 11. Criar uma função de ordenação personalizada para ordenar uma lista de números de forma decrescente.
List<int> customSort(List<int> numeros) {
  numeros.sort((a, b) => b.compareTo(a));
  return numeros;
}

void main() {
  sayGoodbye(); // I. Introdução às Funções
  double raio = 5.0;
  print('Área do círculo: ${calculateArea(raio)}'); // II. Tipos de Funções
  printNumbers(); // II. Tipos de Funções
  greetUser('João', 30); // III. Parâmetros e Retorno
  List<int> numeros = [1, 2, 3, 4, 5];
  print('Soma dos números: ${calculateSum(numeros)}'); // III. Parâmetros e Retorno
  int base = 2;
  int expoente = 3;
  print('Potência: ${calculatePower(base, expoente)}'); // IV. Funções Recursivas
  int n = 5;
  print('O $n-ésimo termo da sequência de Fibonacci é: ${fibonacci(n)}'); // IV. Funções Recursivas
  String frase = 'Olá, mundo!';
  print('Frase invertida: ${reverseString(frase)}'); // V. Exercícios Práticos
  int numero = 7;
  print('O número $numero é primo? ${isPrime(numero)}'); // V. Exercícios Práticos
  List<String> palavras = ['casa', 'carro', 'bicicleta', 'ab', 'abc', 'abcd'];
  print('Palavras com mais de três letras: ${filterWords(palavras)}'); // VI. Aplicações Avançadas
  List<int> numerosDesordenados = [5, 2, 8, 1, 9];
  print('Números ordenados de forma decrescente: ${customSort(numerosDesordenados)}'); // VI. Aplicações Avançadas
}
