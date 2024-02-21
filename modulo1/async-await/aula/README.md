# Roteiro de Aula: Async e Await em Dart

Nesta aula, exploraremos os conceitos de async e await em Dart. Essas palavras-chave são fundamentais para lidar com programação assíncrona de forma mais legível e organizada. Vamos entender como usar async e await para escrever código assíncrono de maneira síncrona, facilitando a compreensão e a manutenção do código.

## Breve Descrição

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

/```dart
Future<void> minhaTarefaAssincrona() async {
  await Future.delayed(Duration(seconds: 2));
  print("Tarefa assíncrona concluída!");
}

void main() {
  minhaTarefaAssincrona();
  print("Main continua executando...");
}
/```

## 2. Utilizando Await para Esperar o Resultado:

Demonstração de como utilizar a palavra-chave `await` para esperar o resultado de uma tarefa assíncrona.

/```dart
Future<void> minhaTarefaAssincrona() async {
  await Future.delayed(Duration(seconds: 2));
  print("Tarefa assíncrona concluída!");
}

void main() async {
  print("Executando a tarefa assíncrona...");
  await minhaTarefaAssincrona();
  print("Main continua executando...");
}
/```

## 3. Tratamento de Erros com Async e Await:

Explicação sobre como tratar erros em operações assíncronas usando try-catch com async e await.

/```dart
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
/```

## 4. Combinando Múltiplas Operações Assíncronas:

Demonstração de como combinar várias operações assíncronas usando async e await.

/```dart
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
/```

## Conclusão:

Revisão dos conceitos aprendidos e sugestão de prática para solidificar o entendimento de async e await.

---
