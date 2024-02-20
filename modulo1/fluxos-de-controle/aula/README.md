# Roteiro: Declarações de Fluxo de Controle em Dart

Este roteiro aborda as declarações de fluxo de controle em Dart, que são usadas para controlar o fluxo de execução de um programa. Você aprenderá sobre os diferentes tipos de declarações de fluxo de controle em Dart e verá exemplos de código para cada um deles.

## Objetivos de Aprendizado:

- Compreender os diferentes tipos de declarações de fluxo de controle em Dart.
- Saber como usar if-else, loops e switch-case para controlar o fluxo de execução de um programa em Dart.
- Ser capaz de escrever código eficiente e lógico usando declarações de fluxo de controle em Dart.

## 1. if-else:

**Descrição:** A declaração if-else é usada para executar condicionalmente código com base em uma expressão booleana.

```dart
int idade = 18;

if (idade >= 18) {
  print("Você é maior de idade.");
} else {
  print("Você é menor de idade.");
}
```

## 2. for loop:

**Descrição:** O loop for é usado para repetir um bloco de código um número específico de vezes.

```dart
for (int i = 0; i < 5; i++) {
  print("Número $i");
}
```

## 3. while loop:

**Descrição:** O loop while é usado para repetir um bloco de código enquanto uma condição dada for verdadeira.

```dart
int contador = 0;
while (contador < 5) {
  print("Contador: $contador");
  contador++;
}
```

## 4. do-while loop:

**Descrição:** O loop do-while é similar ao while loop, mas o bloco de código é executado pelo menos uma vez antes que a condição seja avaliada.

```dart
int contador = 0;
do {
  print("Contador: $contador");
  contador++;
} while (contador < 5);
```

## 5. switch-case:

**Descrição:** A declaração switch-case é usada para selecionar um dos vários blocos de código para executar com base em um valor.

```dart
String diaDaSemana = "quarta";

switch (diaDaSemana) {
  case "segunda":
    print("É segunda-feira.");
    break;
  case "quarta":
    print("É quarta-feira.");
    break;
  default:
    print("Outro dia da semana.");
}
```

## 6. break:

**Descrição:** A declaração break é usada para sair precocemente de um loop.

```dart
for (int i = 0; i < 5; i++) {
  if (i == 3) {
    break;
  }
  print("Número $i");
}
```

## 7. continue:

**Descrição:** A declaração continue é usada para pular a iteração atual de um loop e continuar com a próxima.

```dart
for (int i = 0; i < 5; i++) {
  if (i == 2) {
    continue;
  }
  print("Número $i");
}
```
