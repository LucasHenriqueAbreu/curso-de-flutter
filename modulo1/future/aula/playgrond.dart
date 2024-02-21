void main() {
  var endereco = '';
  getEndereco('12361287').then((resultado) {
    endereco = resultado;
    print('Endereço recebido da API $endereco');
  });
  print('Endereço atual $endereco');
}

Future<String> getEndereco(String cep) {
  //Simulação de requisição da api dos correis
  return Future.value('Rua zero');
}