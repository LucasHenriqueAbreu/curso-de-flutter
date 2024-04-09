# Conteúdo da Aula: Stateful Widgets no Flutter

## 1. Introdução aos Stateful Widgets
Os Stateful Widgets são componentes no Flutter que mantêm um estado interno mutável. Isso permite que eles sejam atualizados dinamicamente e respondam a eventos ou mudanças de dados.

## 2. Exemplos de Utilização
- **Contador Simples:** Vamos criar um aplicativo de contador simples para entender como os Stateful Widgets funcionam.
- **Formulário Básico:** Criaremos um formulário simples que captura dados do usuário e os exibe na interface.

## 3. Implementação de um Stateful Widget
- **Criando a Classe do Widget:** Explicação passo a passo para criar a classe do Stateful Widget.
- **Gerenciando o Estado:** Utilizaremos o método `setState` para atualizar o estado e a interface do usuário.

## 4. Exemplos de Códigos

### Exemplo 1: Aplicativo de Contador Simples
```dart
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Widget - Contador'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Contagem:',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '$_counter',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Text('Incrementar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Exemplo 2: Formulário Básico
```dart
import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  @override
  _FormExampleState createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Widget - Formulário'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Digite seu nome'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Olá!'),
                      content: Text('Bem-vindo, ${_nameController.text}!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Fechar'),
                        ),
                      ],
                    ),
                  );
                },
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

## 5. Conclusão
Recapitulação dos conceitos aprendidos e incentivo para explorar mais recursos dos Stateful Widgets em projetos futuros.
