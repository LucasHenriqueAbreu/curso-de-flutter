import 'dart:io';

/**
 * Escreva uma função que realize duas tarefas 
 * assíncronas diferentes, como ler o conteúdo de dois arquivos.
 * Combine esses Futures usando `Future.wait` e exiba 
 * na tela os resultados de ambas as tarefas quando 
 * estiverem completas.
 */

Future<String> lerArquivo(String caminho) {
  return File(caminho).readAsString();
}

void main() {
  Future.wait([
    lerArquivo('modulo1/future/aula/exercicios/exercicio1.dart'),
    lerArquivo('modulo1/future/aula/exercicios/teste.txt'),
    lerArquivo('modulo1/future/aula/exercicios/EXERCICIOS.md'),
  ]).then((conteudoDosArquivos) {
    for(int i = 0; i < conteudoDosArquivos.length; i++) {
      print('Arquivo $i ${conteudoDosArquivos[i]}');
    }
  });
}