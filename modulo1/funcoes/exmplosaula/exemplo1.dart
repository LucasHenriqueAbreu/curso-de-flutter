void digaOla({
  required String primeiroNome,
  String? sobreNome,
  int ano = 1990,
}) {
  print('Ola, $primeiroNome ${sobreNome ?? ''}!');
  print('Ano $ano');
}

void digaOlaParametrosPosicionais(
  String primeiroNome,
  int ano,
  String? sobreNome,
) {
  print('Ola, $primeiroNome ${sobreNome ?? ''}!');
  print('Ano $ano');
}

void digaOlaParametrosPosicionaisENominais(
    String primeiroNome, String? sobreNome,
    {int ano = 1990}) {
  print('Ola, $primeiroNome ${sobreNome ?? ''}!');
  print('Ano $ano');
}

void main() {
  digaOla(primeiroNome: 'Lucas', sobreNome: 'de Abreu');
  digaOlaParametrosPosicionais('Lucas', 1992, null);
  digaOlaParametrosPosicionaisENominais(
    'Lucas',
    'de abreu',
    ano: 1992,
  );
}
