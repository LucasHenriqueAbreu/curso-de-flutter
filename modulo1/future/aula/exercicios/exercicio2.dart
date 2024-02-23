import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  http.get(Uri.parse('https://api.chucknorris.io/jokes/random'))
    .then((resposta) {
      Map<String, dynamic> jsonObject = json.decode(resposta.body);
      print('Resposta da requisição: ${jsonObject['value']}');
    })
    .catchError((erro) {
      print('Erro ao fazer a requisição: $erro');
    });
}