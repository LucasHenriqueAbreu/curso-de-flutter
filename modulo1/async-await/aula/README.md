# Async e Await em Dart

Nesta aula, exploraremos os conceitos de async e await em Dart. Essas palavras-chave são fundamentais para lidar com programação assíncrona de forma mais legível e organizada. Vamos entender como usar async e await para escrever código assíncrono de maneira síncrona, facilitando a compreensão e a manutenção do código.

## Descrição

O Dart suporta programação assíncrona usando as palavras-chave `async` e `await`. Essas palavras-chave permitem que você escreva código assíncrono de forma síncrona, o que torna mais fácil trabalhar com operações demoradas, como solicitações de rede e acesso a bancos de dados.

## Objetivos da Aula:

- Compreender o conceito de programação assíncrona em Dart.
- Aprender a usar as palavras-chave `async` e `await` para lidar com tarefas assíncronas de forma síncrona.
- Explorar exemplos de código para entender melhor como trabalhar com async e await em situações práticas.

## Expectativas da Aula:

Espera-se que os alunos saiam desta aula capazes de:

- Entender o motivo pelo qual a programação assíncrona é necessária em Dart.
- Utilizar as palavras-chave `async` e `await` para tornar o código assíncrono mais legível e organizado.
- Aplicar os conceitos aprendidos em situações do mundo real para lidar com operações assíncronas de forma eficiente.

## 1. Introdução ao Async e Await:

Explicação sobre o conceito de programação assíncrona e a necessidade de async e await em Dart.

```dart
Future<void> minhaTarefaAssincrona() async {
  await Future.delayed(Duration(seconds: 2));
  print("Tarefa assíncrona concluída!");
}

void main() {
  minhaTarefaAssincrona();
  print("Main continua executando...");
}
```

## 2. Utilizando Await para Esperar o Resultado:

Demonstração de como utilizar a palavra-chave `await` para esperar o resultado de uma tarefa assíncrona.

```dart
Future<void> minhaTarefaAssincrona() async {
  await Future.delayed(Duration(seconds: 2));
  print("Tarefa assíncrona concluída!");
}

void main() async {
  print("Executando a tarefa assíncrona...");
  await minhaTarefaAssincrona();
  print("Main continua executando...");
}
```

## 3. Tratamento de Erros com Async e Await:

Explicação sobre como tratar erros em operações assíncronas usando try-catch com async e await.

```dart
Future<void> minhaTarefaAssincrona() async {
  await Future.delayed(Duration(seconds: 2));
  throw Exception("Ocorreu um erro na tarefa assíncrona");
}

void main() async {
  print("Executando a tarefa assíncrona...");
  try {
    await minhaTarefaAssincrona();
    print("Tarefa concluída com sucesso!");
  } catch (e) {
    print("Erro: $e");
  }
}
```

## 4. Combinando Múltiplas Operações Assíncronas:

Demonstração de como combinar várias operações assíncronas usando async e await.

```dart
Future<void> tarefaDemorada1() async {
  await Future.delayed(Duration(seconds: 2));
  print("Tarefa demorada 1 concluída!");
}

Future<void> tarefaDemorada2() async {
  await Future.delayed(Duration(seconds: 3));
  print("Tarefa demorada 2 concluída!");
}

void main() async {
  print("Executando tarefas demoradas...");
  await tarefaDemorada1();
  await tarefaDemorada2();
  print("Tarefas demoradas concluídas!");
}
```

## 5. Por que usar async e await
Aplicativo de Cálculo de Frete

Você foi contratado para desenvolver um aplicativo em Dart que permite aos usuários calcular o frete com base em um CEP fornecido. O aplicativo deve seguir o seguinte fluxo de operações:

1. O usuário insere um CEP no aplicativo.
2. O aplicativo faz uma chamada assíncrona para uma API de busca de endereço utilizando o CEP fornecido.
3. Após receber o endereço correspondente ao CEP, o aplicativo faz uma chamada assíncrona para calcular o frete com base na cidade do endereço.
4. O valor do frete é exibido ao usuário.

```dart
///Callback hell:

import 'dart:async';

// Simulando uma API para busca de endereço pelo CEP
Future<String> buscarEnderecoPorCEP(String cep) {
  return Future.delayed(Duration(seconds: 1), () {
    // Simula a busca do endereço pelo CEP
    return "Rua Exemplo, 123 - Bairro Exemplo, Cidade Exemplo";
  });
}

// Simulando uma função para calcular o frete a partir da cidade
Future<double> calcularFrete(String cidade) {
  return Future.delayed(Duration(seconds: 1), () {
    // Simula o cálculo do frete a partir da cidade
    // Suponha que o frete seja calculado com base em alguma tabela no banco de dados
    if (cidade == "Cidade Exemplo") {
      return 15.0; // Valor do frete para a cidade exemplo
    } else {
      return 20.0; // Valor do frete padrão para outras cidades
    }
  });
}

void main() {
  // Simulando o uso das funções assíncronas encadeadas
  buscarEnderecoPorCEP("12345678").then((endereco) {
    print("Endereço encontrado: $endereco");
    return calcularFrete("Cidade Exemplo");
  }).then((frete) {
    print("Frete calculado: R\$$frete");
  }).catchError((error) {
    print("Erro: $error");
  });
}

```

```dart
// Usando async e await.
import 'dart:async';

// Simulando uma API para busca de endereço pelo CEP
Future<String> buscarEnderecoPorCEP(String cep) async {
  await Future.delayed(Duration(seconds: 1));
  // Simula a busca do endereço pelo CEP
  return "Rua Exemplo, 123 - Bairro Exemplo, Cidade Exemplo";
}

// Simulando uma função para calcular o frete a partir da cidade
Future<double> calcularFrete(String cidade) async {
  await Future.delayed(Duration(seconds: 1));
  // Simula o cálculo do frete a partir da cidade
  // Suponha que o frete seja calculado com base em alguma tabela no banco de dados
  if (cidade == "Cidade Exemplo") {
    return 15.0; // Valor do frete para a cidade exemplo
  } else {
    return 20.0; // Valor do frete padrão para outras cidades
  }
}

void main() async {
  try {
    // Simulando o uso das funções assíncronas encadeadas com async/await
    String endereco = await buscarEnderecoPorCEP("12345678");
    print("Endereço encontrado: $endereco");

    double frete = await calcularFrete("Cidade Exemplo");
    print("Frete calculado: R\$$frete");
  } catch (error) {
    print("Erro: $error");
  }
}

```
Observe como o código fica mais legível e organizado com o uso de async/await.

Vantagens de usar async/await:

Código mais legível e organizado: O código fica mais fácil de ler e entender, pois não há aninhamento de callbacks.
Facilidade de depuração: É mais fácil identificar erros no código, pois cada operação assíncrona é executada em sequência.
Maior eficiência: As operações assíncronas podem ser executadas em paralelo, o que pode aumentar a eficiência do seu código.
Conclusão:

O uso de async/await é uma ótima maneira de lidar com operações assíncronas em Dart. O código fica mais legível, organizado, fácil de depurar e eficiente.

## Conclusão:

Revisão dos conceitos aprendidos e sugestão de prática para solidificar o entendimento de async e await.

---
