# Roteiro de Aula - Stateless Widgets

## Introdução aos Stateless Widgets

Nesta aula, vamos aprender sobre Stateless Widgets no Flutter. Os Stateless Widgets são widgets que não mantêm nenhum estado mutável e são adequados para criar interfaces de usuário estáticas ou com animações simples.

## Conteúdo da Aula

1. **O que são Stateless Widgets?**
   Em Flutter, os Stateless Widgets são componentes que não têm estado interno mutável. Isso significa que, uma vez que são construídos, eles não podem ser alterados. Essa imutabilidade os torna ideais para elementos de interface de usuário que não precisam ser atualizados dinamicamente.
   
   Pense em um aplicativo de catálogo, onde os itens exibidos são estáticos e não mudam com o tempo. Nesses casos, não há necessidade de recriar ou alterar os widgets, pois eles permanecem os mesmos. Os Stateless Widgets são eficientes para esses cenários, garantindo uma renderização rápida e sem a necessidade de gerenciar estados complexos.

2. **Exemplos de Stateless Widgets**
   - Exemplo de utilização do widget Text para exibir texto estático.
   - Exemplo de utilização do widget Image para exibir uma imagem estática.
   - Exemplo de utilização do widget Container para criar um contêiner sem estado.

3. **Criando um Stateless Widget**
   - Passos para criar um novo Stateless Widget.
   - Implementação do método `build` para retornar a árvore de widgets.

## Exemplos de Código

### Exemplo 1: Utilização do widget Text

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless Widget Example'),
        ),
        body: Center(
          child: Text(
            'Hello, Stateless Widget!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
```

### Exemplo 2: Utilização do widget Image

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless Widget Example'),
        ),
        body: Center(
          child: Image.network(
            'https://example.com/image.jpg',
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
```

### Exemplo 3: Utilização do widget Container

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless Widget Example'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Text(
              'Container Example',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
```

## Conclusão

Nesta aula, aprendemos sobre Stateless Widgets, sua utilização e como criar exemplos básicos com widgets estáticos no Flutter. Esses widgets são essenciais para criar interfaces simples e estáticas em nossos aplicativos.