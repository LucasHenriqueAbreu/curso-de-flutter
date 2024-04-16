// enviar_mensagem.dart
import 'dart:math';
import 'dart:async';

StreamController<String> controller = StreamController<String>.broadcast();

Stream<String> getMessages() {
  return controller.stream;
}

void sendMessage(String message) {
  controller.add(message);
}

void close() {
  controller.close();
}

void main() async {
  getMessages().listen((message) {
    print('Nova mensagem recebida1: $message');
  });
  
  getMessages().listen((message) {
    print('Nova mensagem recebida2: $message');
  });

  final List<String> mensagens = [
    'Olá!',
    'Como você está?',
    'Qual é o seu nome?',
    'Estou bem, obrigado!',
    'Tenha um bom dia!',
    'Tchau!'
  ];

  final random = Random();

  while (true) {
    final mensagem = mensagens[random.nextInt(mensagens.length)];
    sendMessage(mensagem);
    await Future.delayed(Duration(seconds: 2));
  }
}
