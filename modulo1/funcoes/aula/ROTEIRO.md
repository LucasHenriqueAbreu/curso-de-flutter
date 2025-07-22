# Roteiro de Aula: Funções em Dart

## Objetivo da Aula

Explorar os conceitos de funções em Dart, abordando sintaxe, tipos de funções, parâmetros, retorno de valores, recursão, callbacks e aplicações práticas.

---

## 1. Introdução às Funções

Funções são blocos de código reutilizáveis que executam uma tarefa específica.

```dart
void sayHello() {
  print('Olá, mundo!');
}

void main() {
  sayHello();
}
```

> A função `sayHello` imprime "Olá, mundo!" quando é chamada a partir do `main()`.

---

## 2. Tipos de Funções


As funções nomeadas são as mais comuns. Elas possuem um nome explícito e são definidas com a palavra-chave `void` ou com o tipo de retorno desejado.

### 2.1 Funções Nomeadas

```dart
void greetUser(String name) {
  print('Olá, $name!');
}

void main() {
  greetUser('João');
}
```

> Recebe um parâmetro e imprime uma saudação personalizada.

---

Funções anônimas são funções sem nome, normalmente atribuídas a variáveis ou passadas como argumentos. São úteis para lógicas pontuais.

### 2.2 Funções Anônimas

```dart
void main() {
  var multiply = (int a, int b) {
    return a * b;
  };

  print('O resultado da multiplicação é: ${multiply(5, 3)}');
}
```

> `multiply` é uma função anônima atribuída a uma variável.

---

Funções de ordem superior são funções que podem receber outras funções como parâmetro ou retornar funções. Isso permite maior flexibilidade e reutilização de código.

### 2.3 Funções de Ordem Superior

```dart
void higherOrderFunction(Function function) {
  print('Antes da execução da função.');
  function();
  print('Depois da execução da função.');
}

void main() {
  higherOrderFunction(() {
    print('Executando a função passada como argumento.');
  });
}
```

> Uma função que recebe outra função como argumento.

---

## 3. Parâmetros e Retorno

Em Dart, funções podem ter diferentes tipos de parâmetros, incluindo obrigatórios, opcionais e nomeados. Isso oferece flexibilidade na chamada de funções e facilita a legibilidade do código.

Parâmetros nomeados são passados por nome na chamada da função e podem ter valores padrão, tornando-os opcionais.

### 3.1 Parâmetros Nomeados e Opcionais

```dart
void greetUser({String name = 'Usuário'}) {
  print('Olá, $name!');
}

void main() {
  greetUser();
  greetUser(name: 'Maria');
}
```

> O parâmetro `name` é nomeado e tem valor padrão.

---

### 3.2 Retorno de Valores

Funções podem retornar valores em Dart usando a palavra-chave `return`. O tipo de retorno é especificado antes do nome da função.

```dart
int sum(int a, int b) {
  return a + b;
}

void main() {
  var result = sum(3, 5);
  print('A soma é: $result');
}
```

> `sum` retorna a soma de dois inteiros.

---

## 4. Funções Recursivas

[O que é fatorial?](https://brasilescola.uol.com.br/matematica/fatorial.htm)

```dart
int factorial(int n) {
  if (n == 0 || n == 1) return 1;
  return n * factorial(n - 1);
}

void main() {
  var result = factorial(5);
  print('O fatorial de 5 é: $result');
}
```

> Uma função que chama a si mesma para resolver um problema.

---

## 5. Aplicações Avançadas (Callback)

Um **callback** é uma função passada como argumento para outra função. Ele é executado após a conclusão de uma operação, permitindo que ações adicionais sejam realizadas. Callbacks são comumente usados em programação assíncrona, mas também aparecem em funções que manipulam eventos ou resultados de cálculos.

```dart
void performOperation(int x, Function callback) {
  var result = x * 2;
  callback(result);
}

void main() {
  performOperation(5, (result) {
    print('O resultado é: $result');
  });
}
```

> `performOperation` executa um cálculo e chama o `callback` com o resultado.

---

## 6. Exercícios Práticos

- Criar uma função que receba nome e idade e retorne uma saudação.
- Criar uma função que calcule a média de uma lista de números.
- Implementar uma função recursiva que calcule a soma de 1 até N.
- Usar uma função de callback para exibir o dobro de um número.

---

## 7. Conclusão

- Reforço dos conceitos de funções nomeadas, anônimas, de ordem superior, recursão e callbacks.
- Prática com exercícios orientados.
- Espaço para dúvidas e esclarecimentos.
