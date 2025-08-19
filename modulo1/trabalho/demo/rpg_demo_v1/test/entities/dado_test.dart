import 'package:rpg_demo_v1/entities/dado.dart';
import 'package:test/test.dart';

void main() {
  group('Testes para a entidade Dado', () {
    test('Deve criar uma instância de Dado', () {
      final dado = Dado();
      expect(dado, isA<Dado>());
    });
  });
}
