int calculatePower(int base, int expoente) {
  if (expoente == 0) {
    return 1;
  } else {
    var result = calculatePower(base, expoente - 1);
    return base * result;
  }
}
void main() {
  var resultado = calculatePower(2, 4);
  print(resultado);
}