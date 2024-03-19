
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

**Streams e sua Importância na Programação Assíncrona:**

Os Streams em Dart representam uma sequência de eventos assíncronos, onde os dados são produzidos em um tempo indefinido e podem ser consumidos à medida que estão disponíveis. Eles desempenham um papel fundamental na programação assíncrona, permitindo que os desenvolvedores lidem de maneira eficiente com tarefas que ocorrem em segundo plano e eventos que ocorrem ao longo do tempo.

Imagine um Stream como um rio contínuo de dados, onde você pode observar os eventos à medida que eles fluem. Esses eventos podem ser mensagens de um servidor, atualizações de sensores, interações do usuário em uma interface gráfica ou qualquer outra coisa que ocorra de forma assíncrona em um programa.

A importância dos Streams na programação assíncrona reside na sua capacidade de lidar com eventos e fluxos de dados de maneira eficiente e reativa. Em vez de esperar passivamente por dados, podemos registrar manipuladores (handlers) para reagir a eventos à medida que eles ocorrem. Isso nos permite escrever código mais conciso, legível e responsivo, especialmente em aplicativos que dependem fortemente de entrada do usuário, comunicação de rede ou operações assíncronas.

Em resumo, os Streams fornecem um mecanismo poderoso para lidar com fluxos de dados assíncronos e eventos em Dart, tornando a programação assíncrona mais eficiente e expressiva.

---


### Criando e Consumindo um Stream Simples

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

Este código em Dart demonstra como criar e consumir um stream simples. Aqui está a explicação passo a passo:

1. **Definindo a Função `main()`:**
```dart
void main() {
  // Código principal do programa
}
```
A função `main()` é o ponto de entrada do programa Dart.

2. **Criando um Stream de Números Inteiros:**
```dart
Stream<int> numerosStream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);
```
Esta linha cria um stream chamado `numerosStream` que emite uma sequência de números inteiros. O método `fromIterable()` é usado para criar um stream a partir de uma lista de valores. Neste caso, o stream emitirá os números inteiros 1, 2, 3, 4 e 5.

3. **Consumindo o Stream:**
```dart
numerosStream.listen((numero) {
  print(numero);
});
```
Esta parte do código consome o stream `numerosStream`. O método `listen()` é chamado no stream, que recebe uma função de retorno de chamada (callback). A função de retorno de chamada especifica o que fazer com cada item (número) emitido pelo stream. Neste caso, estamos apenas imprimindo cada número para a saída padrão.

Dessa forma, o programa cria um stream simples que emite uma sequência de números inteiros e, em seguida, consome esse stream para imprimir esses números.


### Criando um Stream Assíncrono de Números

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

Stream<int> numerosAssincronos(int quantidade) {
  // Retornando um Stream que emite uma sequência de números a cada segundo
  return Stream<int>.periodic(Duration(seconds: 1), (i) => i + 1).take(quantidade);
}
```

Neste código, a função numerosAssincronos retorna um stream usando Stream.periodic, que emite valores periodicamente a cada segundo. O método take é usado para limitar a quantidade de números emitidos pelo stream.


### Filtrando e Transformando Dados de um Stream

```dart
// Exemplo de filtro (condição) em uma stream

void main() {
  // Criando um Stream que emite uma sequência de números inteiros
  Stream<int> numerosStream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);

  // Filtrando os números pares e imprimindo-os
  numerosStream
      .where((numero) => numero % 2 == 0)
      .listen((numero) => print(numero));
}
```

Este trecho de código demonstra como filtrar e transformar dados em um stream. Aqui está a explicação da nova parte:

- **Filtragem e Transformação:**
  ```dart
  // Filtrando os números pares e imprimindo-os
  numerosStream
      .where((numero) => numero % 2 == 0)
      .listen((numero) => print(numero));
  ```
Neste trecho, o método `where()` é usado para filtrar os números pares do stream `numerosStream`. Ele recebe uma função de callback que retorna `true` para os elementos que devem ser incluídos no novo stream e `false` para os que devem ser excluídos. Neste caso, estamos verificando se o número é par (resto da divisão por 2 é igual a 0). Em seguida, o método `listen()` é usado para ouvir os elementos do novo stream resultante da filtragem e imprimir cada número par.


### Manuseando Erros em Streams

```dart

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

Este trecho de código demonstra como manusear erros em streams. Aqui está a explicação da nova parte:

- **Manuseio de Erros:**
```dart
// Lidando com o erro
streamComErro.listen(
  (numero) => print(numero),
  onError: (erro) => print('Erro: $erro'),
);
```
Neste trecho, o método `listen()` é usado para ouvir os elementos do stream `streamComErro`. Além disso, passamos um callback `onError` que será chamado se ocorrer um erro durante a execução do stream. Se um erro ocorrer, o callback `onError` será invocado com o erro como argumento e imprimirá uma mensagem indicando o erro.

### Entendendo o StreamController

O `StreamController` é uma classe em Dart que facilita a criação e o controle de streams. Ele atua como um produtor de eventos (ou seja, emite eventos para um stream) e permite que os consumidores se inscrevam para ouvir esses eventos. Aqui está uma explicação mais detalhada:

- **O que é um StreamController?**
  O `StreamController` é usado para criar e controlar streams em Dart. Ele é responsável por emitir eventos para um stream e também permite que os consumidores se inscrevam para ouvir esses eventos.

- **Por que usar um StreamController?**
  - **Emissão de eventos:** O `StreamController` facilita a emissão de eventos para um stream. Você pode adicionar eventos ao stream usando o método `add()`.
  - **Controle de eventos:** O `StreamController` permite controlar quando a emissão de eventos começa e termina. Você pode indicar o término da emissão de eventos chamando o método `close()`.
  - **Comunicação assíncrona:** Ele é útil em situações em que você precisa lidar com comunicação assíncrona entre partes do seu código.

- **Como usar um StreamController?**
  - **Criação do StreamController:** Você cria um `StreamController` especificando o tipo de dados que o stream irá carregar.
  ```dart
  StreamController<int> controller = StreamController<int>();
  ```
- **Adição de eventos ao Stream:** Você adiciona eventos ao stream usando o método `add()`.
  ```dart
  controller.add(1);
  controller.add(2);
  controller.add(3);
  ```
- **Indicação de conclusão da emissão de eventos:** Quando terminar de adicionar eventos ao stream, você indica que a emissão de eventos foi concluída chamando o método `close()`.
  ```dart
  controller.close();
  ```
- **Consumo do Stream:** Os consumidores podem se inscrever para ouvir os eventos emitidos pelo stream usando o getter `stream` do `StreamController`.
  ```dart
  controller.stream.listen((event) {
    print(event);
  });
  ```

- **Exemplo de Uso:**
```dart
import 'dart:async';

void main() async {
  // Criando um StreamController para controlar a emissão de eventos
  StreamController<int> controller = StreamController<int>();

  controller.stream.listen((event) {
    print(event);
  });

  // Adicionando eventos ao Stream
  controller.add(1);
  await Future.delayed(Duration(seconds: 1));
  controller.add(2);
  await Future.delayed(Duration(seconds: 1));
  controller.add(3);

  // Indicando que a emissão de eventos foi concluída
  controller.close();
}
```

Neste exemplo, criamos um StreamController para controlar a emissão de eventos de números inteiros. Adicionamos alguns números ao stream usando o método add() e, em seguida, indicamos que a emissão de eventos foi concluída chamando o método close(). Por fim, consumimos o stream usando um loop await for e imprimimos os números na saída padrão.

- [Exercícios](exercicios/EXERCICIOS.md)