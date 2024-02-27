Future<String> buscarEmailPorId(int id) {
  //Simulação de consulta ao banco (mock)
  return Future.delayed(Duration(seconds: 5), () {
    return 'emaildousuario@gmail.com';
  });
}

void onClick() {
  print('Carregando...');
  buscarEmailPorId(1).then((String email) {
    print(email);
    print('Não está mais carregando');
  });
}

void main() {
  onClick();
}