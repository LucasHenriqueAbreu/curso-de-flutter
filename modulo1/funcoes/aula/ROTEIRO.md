Aula sobre Funções em Dart
==========================

Objetivo da Aula
----------------

Nesta aula, vamos explorar os conceitos de funções na linguagem Dart, entender sua sintaxe, tipos de funções e exemplos práticos.

I. Introdução às Funções
------------------------

```dart
// Definindo uma função simples em Dart
void sayHello() {
  print('Olá, mundo!');
}

void main() {
  // Chamando a função sayHello
  sayHello();
}
```

Explicação: A função `sayHello` imprime "Olá, mundo!" quando é chamada a partir da função `main`.

II. Tipos de Funções
--------------------

### Funções Nomeadas

```dart
// Função nomeada em Dart
void greetUser(String name) {
  print('Olá, $name!');
}

void main() {
  greetUser('João');
}

```

Explicação: A função `greetUser` recebe um parâmetro `name` e imprime uma saudação personalizada.

### Funções Anônimas

```dart
void main() {
  // Função anônima em Dart
  var multiply = (int a, int b) {
    return a * b;
  };

  print('O resultado da multiplicação é: ${multiply(5, 3)}');
}

```

Explicação: A função anônima `multiply` multiplica dois números inteiros e retorna o resultado.

### Funções de Ordem Superior

```dart
void main() {
  // Função de ordem superior em Dart
  void higherOrderFunction(Function function) {
    print('Antes da execução da função.');
    function();
    print('Depois da execução da função.');
  }

  // Chamando a função de ordem superior com uma função como argumento
  higherOrderFunction(() {
    print('Executando a função passada como argumento.');
  });
}
```

Explicação: `higherOrderFunction` recebe uma função como argumento e a executa em um determinado ponto.

III. Parâmetros e Retorno
-------------------------

### Parâmetros em Funções

```dart 
// Função com parâmetros opcionais em Dart
void greetUser({String name = 'Usuário'}) {
  print('Olá, $name!');
}

void main() {
  greetUser(); // Saída: Olá, Usuário!
  greetUser(name: 'Maria'); // Saída: Olá, Maria!
}
```

Explicação: `greetUser` possui um parâmetro nomeado `name` que é opcional e tem um valor padrão.

### Retorno de Valores

```dart 
// Função com retorno em Dart
int sum(int a, int b) {
  return a + b;
}

void main() {
  var result = sum(3, 5);
  print('A soma é: $result'); // Saída: A soma é: 8
}
```

Explicação: `sum` recebe dois inteiros e retorna a soma deles.

IV. Funções Recursivas
----------------------

O que é fatorial? [resposta](https://brasilescola.uol.com.br/matematica/fatorial.htm)

```dart 
// Função recursiva em Dart para calcular o fatorial
int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  var result = factorial(5);
  print('O fatorial de 5 é: $result'); // Saída: O fatorial de 5 é: 120
}
```

Explicação: `factorial` é uma função recursiva para calcular o fatorial de um número.

V. Exercícios Práticos
----------------------

Exercícios simples para os alunos resolverem.

VI. Aplicações Avançadas
------------------------
```dart 
void main() {
  // Função de callback em Dart
  void performOperation(int x, Function callback) {
    var result = x * 2;
    callback(result);
  }

  // Chamando a função com uma função de callback
  performOperation(5, (result) {
    print('O resultado é: $result'); // Saída: O resultado é: 10
  });
}

```

Explicação: `performOperation` executa uma operação e chama uma função de callback com o resultado.

VII. Conclusão e Perguntas
--------------------------

Recapitulação dos conceitos principais e espaço para perguntas e esclarecimentos adicionais.
