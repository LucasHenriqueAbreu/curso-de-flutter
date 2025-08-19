


# Encapsulamento em Dart

Encapsulamento é um dos pilares fundamentais da Programação Orientada a Objetos (POO). Ele permite esconder os detalhes internos de uma classe e expor apenas o que for necessário para quem for utilizá-la. Em Dart, o encapsulamento é alcançado por meio do uso de atributos privados (prefixando com `_`) e através do uso de getters e setters.

## Objetivos
- Compreender o conceito de encapsulamento na programação orientada a objetos.
- Aprender a criar atributos privados em Dart.
- Utilizar getters e setters para controlar o acesso a dados.
- Entender a importância do encapsulamento para a manutenção e segurança do código.

## Expectativas
Ao final deste roteiro, espera-se que você seja capaz de:
- Proteger os dados de uma classe utilizando atributos privados.
- Criar getters e setters personalizados para controlar o acesso e modificação dos dados.
- Entender como o encapsulamento ajuda a manter a integridade dos objetos.

## Atributos Privados
- Em Dart, um atributo é privado ao ser prefixado com `_` (underscore). 
- O acesso direto a atributos privados só é permitido dentro da mesma biblioteca.

```dart
class ContaBancaria {
  String _titular;
  double _saldo = 0.0;

  ContaBancaria(this._titular);

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
    }
  }

  void sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo -= valor;
    }
  }

  double get saldo => _saldo;
}
```

## Getters e Setters
- Getters são usados para obter o valor de um atributo.
- Setters são usados para definir o valor de um atributo.
- Eles permitem inserir lógica adicional no momento de acesso ou modificação dos dados.

```dart
class Pessoa {
  String _nome;

  Pessoa(this._nome);

  String get nome => _nome;

  set nome(String novoNome) {
    if (novoNome.length >= 3) {
      _nome = novoNome;
    }
  }
}
```

## Vantagens do Encapsulamento
- Permite alterar a implementação interna sem afetar o código externo.
- Garante que os dados sejam manipulados de forma segura.
- Facilita a manutenção e evolução do sistema.

## Exercício Sugerido
1. Crie uma classe `Produto` com os seguintes atributos privados:
   - `String _nome`
   - `double _preco`
2. Crie os getters e setters para os atributos com regras:
   - O nome deve ter pelo menos 2 caracteres.
   - O preço não pode ser negativo.
3. Teste criando objetos e tentando atribuir valores inválidos.
4. Crie métodos para aplicar desconto e calcular preço final.

## Conclusão
Encapsulamento é um conceito essencial para garantir a integridade e a segurança dos dados em uma aplicação orientada a objetos. Ao dominar o uso de atributos privados, getters e setters, você terá maior controle sobre o comportamento das suas classes e mais flexibilidade para evoluí-las no futuro.

- [Exercícios](exercicios/EXERCICIOS.md)