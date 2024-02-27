
import 'dart:io';

void readFiles(List<String> paths) {
  List<Future<String>> acoesFuturas = paths
  .map((path) => File(path).readAsString()).toList();
  
  Future.wait(acoesFuturas).then((List<String> conteudos) {
    print(conteudos);
  }).catchError((error) {
    print(error);
  });
}

void main() {
  readFiles(['teste.txt', 'teste2.txt']);
}
