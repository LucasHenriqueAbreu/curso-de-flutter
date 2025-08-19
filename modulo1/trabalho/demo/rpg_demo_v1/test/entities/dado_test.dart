import 'package:rpg_demo_v1/entities/dado.dart';
import 'package:test/test.dart';

void main() {
  group('Testes para a entidade Dado', () {
    test('Deve criar uma instância de Dado', () {
      final dado = Dado(20);
      expect(dado, isA<Dado>());
    });

    test('Valor gerado deve estar entre 1 e o número de lados (20 lados)', () {
      final dado = Dado(20);
      final resultado = dado.jogar();
      expect(resultado, inInclusiveRange(1, 20));
    });

    test('Valor gerado deve estar entre 1 e o número de lados (10 lados)', () {
      final dado = Dado(10);
      final resultado = dado.jogar();
      expect(resultado, inInclusiveRange(1, 10));
    });

    test('Valor gerado deve estar entre 1 e o número de lados (6 lados)', () {
      final dado = Dado(6);
      final resultado = dado.jogar();
      expect(resultado, inInclusiveRange(1, 6));
    });

    test('Valor gerado deve estar entre 1 e o número de lados (1 lados)', () {
      final dado = Dado(1);
      final resultado = dado.jogar();
      expect(resultado, inInclusiveRange(1, 1));
    });
  });
}
