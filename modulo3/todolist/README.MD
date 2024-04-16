# Roteiro de Aula - Criando um App de TODO List

## Introdução
- **Objetivo:** Criar um aplicativo simples de lista de tarefas (TODO list) usando Flutter.
- **Conhecimentos Prévios:** Conhecimento básico de Flutter e Dart.

## Etapa 1: Configuração do Projeto
1. Criar um novo projeto Flutter.

/```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO List',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TodoListScreen(),
    );
  }
}
/```

**Explicação:**
- Nesta etapa, configuramos um novo projeto Flutter e definimos a estrutura básica do aplicativo.

**Links para a Documentação:**
- [MaterialApp](https://api.flutter.dev/flutter/material/MaterialApp-class.html)

## Etapa 2: Criando a Interface Principal
1. Adicionar um Scaffold com AppBar para exibir o título da lista.

/```dart
class TodoListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TODO List')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(tasks[index]));
        },
      ),
    );
  }
}
/```

**Explicação:**
- Criamos a tela principal do aplicativo, que consiste em um Scaffold com uma AppBar e uma ListView para exibir a lista de tarefas.

**Links para a Documentação:**
- [Scaffold](https://api.flutter.dev/flutter/material/Scaffold-class.html)
- [AppBar](https://api.flutter.dev/flutter/material/AppBar-class.html)
- [ListView.builder](https://api.flutter.dev/flutter/widgets/ListView/ListView.builder.html)
- [ListTile](https://api.flutter.dev/flutter/material/ListTile-class.html)

## Etapa 3: Modelando os Dados
1. Criar uma Classe Task para representar uma tarefa.

/```dart
class Task {
  String title;
  bool isDone;

  Task({required this.title, this.isDone = false});
}
/```

2. Inicializar uma lista de tarefas.

/```dart
final List<Task> tasks = [
  Task(title: 'Task 1'),
  Task(title: 'Task 2'),
  Task(title: 'Task 3'),
];
/```

**Explicação:**
- Definimos uma classe `Task` para representar uma tarefa e inicializamos uma lista de tarefas de exemplo.

## Etapa 4: Exibindo Tarefas na ListView
1. Criar um Widget de Item de Tarefa (TaskItem) para exibir uma tarefa na lista.

/```dart
class TaskItem extends StatelessWidget {
  final Task task;

  TaskItem({required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.title),
      leading: Checkbox(
        value: task.isDone,
        onChanged: (value) {
          // Implemente a lógica para marcar tarefa como concluída
        },
      ),
    );
  }
}
/```

2. Atualizar ListView para usar TaskItem.

/```dart
body: ListView.builder(
  itemCount: tasks.length,
  itemBuilder: (context, index) {
    return TaskItem(task: tasks[index]);
  },
),
/```

**Explicação:**
- Criamos um widget `TaskItem` para exibir uma tarefa na lista usando ListTile e Checkbox.

**Links para a Documentação:**
- [Checkbox](https://api.flutter.dev/flutter/material/Checkbox-class.html)

## Etapa 5: Adicionando uma Nova Tarefa
1. Criar uma Nova Página (NewTaskPage) para adicionar uma nova tarefa.

/```dart
class NewTaskPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nova Tarefa')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Título da Tarefa'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String title = _controller.text.trim();
                if (title.isNotEmpty) {
                  // Implemente a lógica para adicionar nova tarefa
                  Navigator.pop(context);
                }
              },
              child: Text('Adicionar Tarefa'),
            ),
          ],
        ),
      ),
    );
  }
}
/```

**Explicação:**
- Criamos uma nova página para adicionar uma nova tarefa à lista.

**Links para a Documentação:**
- [TextField](https://api.flutter.dev/flutter/material/TextField-class.html)
- [ElevatedButton](https://api.flutter.dev/flutter/material/ElevatedButton-class.html)

