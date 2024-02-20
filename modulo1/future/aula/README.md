# Futures

Nesta aula, vamos explorar o conceito de Futures no Dart, uma ferramenta poderosa para lidar com operações assíncronas. Vamos aprender como usar Futures para executar tarefas assíncronas de forma eficiente e como lidar com seus resultados.

## Objetivos da Aula:

- Compreender o que são Futures em Dart e por que são necessários.
- Aprender a criar, executar e manipular Futures em Dart e Dart.
- Explorar exemplos de uso de Futures em situações práticas, como solicitações de rede e operações de E/S de arquivos.

## Expectativas da Aula:

Espera-se que os alunos saiam desta aula capazes de:

- Compreender o conceito de assincronia e a necessidade de Futures no Dart.
- Criar Futures para executar tarefas assíncronas em seus aplicativos Dart.
- Manipular e lidar com os resultados de Futures usando métodos como `then`, `catchError` e outros.

## 1. Introdução aos Futures:

Os Futures no Dart são utilizados para representar um valor que estará disponível no futuro, geralmente resultado de uma operação assíncrona. Eles são cruciais para lidar com tarefas que não podem bloquear a thread principal da interface do usuário, como solicitações de rede e operações de E/S de arquivos.

```dart
import 'dart:io';

Future<String> lerArquivo(String caminho) {
  return File(caminho).readAsString();
}
```

## 2. Executando e Manipulando Futures:

Demonstração de como executar um Future e lidar com seu resultado usando o método `then`, e como lidar com erros usando `catchError`.

```dart
void main() {
  lerArquivo('caminho/do/arquivo.txt').then((conteudo) {
    print('Conteúdo do arquivo: $conteudo');
  }).catchError((erro) {
    print('Erro ao ler o arquivo: $erro');
  });
}
```

## 3. Combinando Futures:

Apresentação de como combinar múltiplos Futures usando `Future.wait` para aguardar a conclusão de várias tarefas assíncronas.

```dart
void main() {
  Future.wait([
    lerArquivo('caminho/do/arquivo1.txt'),
    lerArquivo('caminho/do/arquivo2.txt'),
  ]).then((List<String> conteudos) {
    print('Conteúdo do arquivo 1: ${conteudos[0]}');
    print('Conteúdo do arquivo 2: ${conteudos[1]}');
  }).catchError((erro) {
    print('Erro ao ler os arquivos: $erro');
  });
}
```

## 4. Exemplo Prático: Requisição HTTP com Future:

Demonstração de como realizar uma solicitação HTTP assíncrona usando a biblioteca `http` e Futures.

```dart
import 'package:http/http.dart' as http;

void main() {
  http.get(Uri.parse('https://api.example.com/data'))
    .then((resposta) {
      print('Resposta da requisição: ${resposta.body}');
    })
    .catchError((erro) {
      print('Erro ao fazer a requisição: $erro');
    });
}
```

## 5. Considerações Finais:

Revisão dos conceitos aprendidos e sugestão de exercícios para praticar o uso de Futures em situações do mundo real.

---
