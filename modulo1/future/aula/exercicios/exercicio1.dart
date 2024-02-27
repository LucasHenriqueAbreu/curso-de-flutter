

import 'dart:io';

void main() {
  var file = new File('teste.txt');
  var conteudoFuturo = file.readAsString();
  print(conteudoFuturo);
}