import 'dart:io';

Future<String> lerArquivo(String caminho) {
  return File(caminho).readAsString();
}

Future<void> main() async {
  try {
    String conteudo = await lerArquivo('asdfasdf.txt');
    print(conteudo);
  } catch (erro) {
    print(erro);
  }
  print('Passou aqui no fim');
}