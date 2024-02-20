void main() {
  print('======If no dart=======');
  var idade = 22;
  if (idade >= 18) {
    print('Maior de idade');
  } else {
    print('Menor de idade');
  }

  print('======For no dart=======');
  for(int i = 0; i < 5; i++) {
    print('laço $i');
  }

  print('======While=======');
  int count = 0;
  while(count < 5) {
    print('Laço $count');
    count++;
  }

  print('=======Do while======');
  int countDoWhile = 0;
  do {
    print('Laço $countDoWhile');
    countDoWhile++;
  } while (countDoWhile < 5);

  String diaDaSemana = 'sexta';

  switch (diaDaSemana) {
    case 'segunda':
      print('Bah, meu que chato!!');
      break;
    case 'terça':
      print('Blz, mas ainda não');
      break;
    case 'quarta':
      print('Já da pra tomar uma');
      break;
    case 'quinta':
      print('Quase lá, manooo!!');
      break;
    case 'sexta':
      print('Ihuulll!!');
      break;
  }
}