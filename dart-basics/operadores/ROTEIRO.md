Aula sobre Operadores em Dart
=============================

Objetivo da Aula
----------------

Nesta aula, vamos explorar os operadores disponíveis na linguagem Dart, entender sua utilização e aplicação prática.

Duração
-------

Aproximadamente 1 hora

Estrutura da Aula
-----------------

### I. Introdução aos Operadores (15 minutos)

*   Explicação teórica sobre operadores em programação
*   Tipos de operadores em Dart
*   Sintaxe básica

### II. Operadores Aritméticos (15 minutos)

```dart
void main() {
  int a = 10;
  int b = 5;

  print('Soma: ${a + b}'); // Soma: 15
  print('Subtração: ${a - b}'); // Subtração: 5
  print('Multiplicação: ${a * b}'); // Multiplicação: 50
  print('Divisão: ${a / b}'); // Divisão: 2.0
  print('Resto da divisão: ${a % b}'); // Resto da divisão: 0
}
```

### III. Operadores de Atribuição (10 minutos)

```dart
void main() {
  int x = 5;
  x += 3; // Equivalente a x = x + 3
  print('Valor de x: $x'); // Valor de x: 8

  int y = 10;
  y ~/= 3; // Equivalente a y = y ~/ 3 (divisão inteira)
  print('Valor de y: $y'); // Valor de y: 3
}
```

### IV. Operadores Relacionais e Lógicos (15 minutos)

```dart
void main() {
  int p = 10;
  int q = 5;

  print('p é maior que q? ${p > q}'); // p é maior que q? true
  print('p é menor que q? ${p < q}'); // p é menor que q? false
  print('p é igual a q? ${p == q}'); // p é igual a q? false

  bool condition1 = true;
  bool condition2 = false;

  print('Operador AND: ${condition1 && condition2}'); // Operador AND: false
  print('Operador OR: ${condition1 || condition2}'); // Operador OR: true
}

```

### V. Operadores de Incremento e Decremento (5 minutos)

```dart
void main() {
  int num = 10;

  num++; // Incremento
  print('Incremento: $num'); // Incremento: 11

  num--; // Decremento
  print('Decremento: $num'); // Decremento: 10
}
```

### VI. Conclusão e Perguntas (5 minutos)

*   Recapitulação dos conceitos principais sobre operadores em Dart
*   Espaço para perguntas e esclarecimentos adicionais

Esse roteiro oferece uma introdução concisa aos operadores em Dart, com exemplos práticos para cada tipo de operador.