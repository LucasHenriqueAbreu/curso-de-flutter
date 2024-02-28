Future<String> buscarEmailPorId(int id) {
  //Simulação de consulta ao banco (mock)
  return Future.delayed(Duration(seconds: 5), () {
    return 'emaildousuario@gmail.com';
  });
}

Future<String> buscarUserPorEmail(String email) {
  //Simulação de consulta ao banco (mock)
  return Future.delayed(Duration(seconds: 5), () {
    return 'user dono do email $email';
  });
}

Future<void> onClick() async {
  print('Carregando...');
  String email = await buscarEmailPorId(1);
  print(email);
  String user = await buscarUserPorEmail(email);
  print(user);
  print('Parou de carregar');
}

void main() {
  onClick();
}