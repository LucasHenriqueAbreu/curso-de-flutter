import 'dart:async';

class Chat {
  final _mensagensController = StreamController<String>();
  Stream<String> get mensagensStream => _mensagensController.stream;

  void enviarMensagem(String mensagem, String nome) {
    _mensagensController.add("$nome: $mensagem");
  }
}

void main() {
  var chat = new Chat();

  // Enviando algumas mensagens de exemplo
  chat.enviarMensagem("Olá, pessoal!", 'alice');
  chat.enviarMensagem("Oi, Alice!", 'bob');
  chat.enviarMensagem("Oi, pessoal!", 'carol');
  chat.enviarMensagem('Oi, Carol enviando aqui', 'carol');

  // Exibindo mensagens na tela
  chat.mensagensStream.listen(print);
}
