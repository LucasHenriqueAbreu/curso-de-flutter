bool isDisable(String role) {
  return !(role == 'ADMIN');
}

String getColor(String role) {
  return role == 'ADMIN' ? 'vermelho' : 'amarelo';
}

void main() {
  var role = 'COMUN';
  var disable = isDisable(role);
  var cor = getColor(role);
  print('$disable, $cor');
}