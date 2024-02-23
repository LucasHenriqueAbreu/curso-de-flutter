import 'dart:io';

/**
 * - Escreva uma função que receba o caminho de um arquivo como
 *  entrada e retorne um Future com o conteúdo do arquivo.
 * 
 * - Crie um programa que utilize essa função para ler o conteúdo 
 * de um arquivo e o exiba na tela. 
 * */

 Future<String> lerArquivo(String caminho) {
    return File(caminho).readAsString();
 }

void main() {
  lerArquivo('teste.txt').then((conteudoArquivo) {
    print(conteudoArquivo);
  }).catchError((error) {
    print('Olha a zica ai $error');
  });
}