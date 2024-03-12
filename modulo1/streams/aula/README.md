
**Streams em Dart**

**Objetivos:**
1. Compreender o conceito de Streams e sua importância na programação assíncrona.
2. Explorar os fundamentos dos Streams em Dart.
3. Aprender a criar, manipular e consumir Streams em Dart.
4. Entender como os Streams ajudam a lidar com fluxos de dados assíncronos e eventos.

**Descrição:**
Nesta aula, exploraremos o conceito de Streams em Dart, uma ferramenta poderosa para lidar com programação assíncrona e fluxos de dados. Começaremos com uma discussão sobre o que são Streams, sua importância na programação assíncrona e como eles nos permitem lidar de forma eficiente com eventos e fluxos de dados assíncronos. Em seguida, mergulharemos nos fundamentos dos Streams em Dart, incluindo como criar, manipular e consumir Streams. Por fim, exploraremos exemplos práticos de como utilizar Streams para resolver problemas do mundo real e como eles se integram à programação reativa.

**Expectativas da Aula:**
Espera-se que os alunos saiam desta aula com uma compreensão sólida dos Streams em Dart e de como eles podem ser aplicados em seus próprios projetos. Além disso, os alunos devem ser capazes de reconhecer situações em que o uso de Streams é apropriado e entender como os Streams se encaixam no paradigma da programação reativa.

---

**Explicação sobre Streams e sua Importância na Programação Assíncrona:**

Os Streams em Dart representam uma sequência de eventos assíncronos, onde os dados são produzidos em um tempo indefinido e podem ser consumidos à medida que estão disponíveis. Eles desempenham um papel fundamental na programação assíncrona, permitindo que os desenvolvedores lidem de maneira eficiente com tarefas que ocorrem em segundo plano e eventos que ocorrem ao longo do tempo.

Imagine um Stream como um rio contínuo de dados, onde você pode observar os eventos à medida que eles fluem. Esses eventos podem ser mensagens de um servidor, atualizações de sensores, interações do usuário em uma interface gráfica ou qualquer outra coisa que ocorra de forma assíncrona em um programa.

A importância dos Streams na programação assíncrona reside na sua capacidade de lidar com eventos e fluxos de dados de maneira eficiente e reativa. Em vez de esperar passivamente por dados, podemos registrar manipuladores (handlers) para reagir a eventos à medida que eles ocorrem. Isso nos permite escrever código mais conciso, legível e responsivo, especialmente em aplicativos que dependem fortemente de entrada do usuário, comunicação de rede ou operações assíncronas.

Em resumo, os Streams fornecem um mecanismo poderoso para lidar com fluxos de dados assíncronos e eventos em Dart, tornando a programação assíncrona mais eficiente e expressiva.

---

**Exemplos de Código:**

1. **Criando e Consumindo um Stream Simples**

```dart
import 'dart:async';

void main() {
  // Criando um Stream que emite uma sequência de números inteiros
  Stream<int> numerosStream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);

  // Consumindo o Stream e imprimindo os números
  numerosStream.listen((numero) {
    print(numero);
  });
}
```

2. **Criando um Stream Assíncrono de Números**

```dart
import 'dart:async';

void main() {
  // Criando um Stream que emite uma sequência de números a cada segundo
  Stream<int> numerosStream = numerosAssincronos(5);

  // Consumindo o Stream e imprimindo os números
  numerosStream.listen((numero) {
    print(numero);
  });
}

Stream<int> numerosAssincronos(int quantidade) async* {
  for (int i = 1; i <= quantidade; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
```

3. **Filtrando e Transformando Dados de um Stream**

```dart
// Examplo da filtro (condição) em uma stream
import 'dart:async';

void main() {
  // Criando um Stream que emite uma sequência de números inteiros
  Stream<int> numerosStream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);

  // Filtrando os números pares e imprimindo-os
  numerosStream
      .where((numero) => numero % 2 == 0)
      .listen((numero) => print(numero));
}
```

```dart
/// Exemplo de transformação de dados em streams
import 'dart:async';

void main() {
  // Criando um Stream que emite uma sequência de números inteiros
  Stream<int> numerosStream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);

  // Transformando os números dobrando seu valor e imprimindo-os
  numerosStream
      .map((numero) => numero * 2)
      .listen((numero) => print(numero));
}
```

4. **Combinando Dois Streams**

```dart
import 'dart:async';

void main() {
  // Criando dois Streams que emitem sequências de números inteiros
  Stream<int> stream1 = Stream<int>.fromIterable([1, 2, 3]);
  Stream<int> stream2 = Stream<int>.fromIterable([4, 5, 6]);

  // Combinando os dois Streams e imprimindo os números
  Stream<int> combinedStream = Stream<int>.concat([stream1, stream2]);
  combinedStream.listen((numero) => print(numero));
}
```

5. **Manuseando Erros em Streams**

```dart
import 'dart:async';

void main() {
  // Criando um Stream que emite uma sequência de números inteiros
  Stream<int> numerosStream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);

  // Lançando uma exceção se o número for maior que 3
  Stream<int> streamComErro = numerosStream.map((numero) {
    if (numero > 3) {
      throw Exception('Número maior que 3!');
    }
    return numero;
  });

  // Lidando com o erro
  streamComErro.listen(
    (numero) => print(numero),
    onError: (erro) => print('Erro: $erro'),
  );
}
```

**Exemplos de Uso de Streams com Async e Await:**
1. **Criando um Stream assíncrono de números**
```dart
import 'dart:async';

Future<void> main() async {
  // Criando um Stream que emite uma sequência de números a cada segundo
  Stream<int> numerosStream = numerosAssincronos(5);

  // Consumindo o Stream e imprimindo os números
  await for (int numero in numerosStream) {
    print(numero);
  }
}

Stream<int> numerosAssincronos(int quantidade) async* {
  for (int i = 1; i <= quantidade; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

```
2. **Consumindo um Stream assíncrono com StreamController**

```dart
import 'dart:async';

Future<void> main() async {
  // Criando um StreamController para controlar a emissão de eventos
  StreamController<int> controller = StreamController<int>();

  // Adicionando eventos ao Stream
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    controller.add(i);
  }

  // Indicando que a emissão de eventos foi concluída
  controller.close();

  // Consumindo o Stream e imprimindo os números
  await for (int numero in controller.stream) {
    print(numero);
  }
}

```
2. **Transformando e filtrando dados de um Stream assíncrono**

```dart
import 'dart:async';

Future<void> main() async {
  // Criando um StreamController para controlar a emissão de eventos
  StreamController<int> controller = StreamController<int>();

  // Adicionando eventos ao Stream
  for (int i = 1; i <= 10; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    controller.add(i);
  }

  // Indicando que a emissão de eventos foi concluída
  controller.close();

  // Consumindo o Stream, filtrando e transformando os dados, e imprimindo os números pares
  await for (int numero in controller.stream.where((numero) => numero % 2 == 0)) {
    print(numero * 2);
  }
}
```