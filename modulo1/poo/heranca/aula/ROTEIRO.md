


# Herança em Dart

A herança é um dos pilares da programação orientada a objetos (POO). Ela permite que uma classe (chamada subclasse ou classe filha) herde os atributos e comportamentos de outra classe (chamada superclasse ou classe mãe). Com isso, é possível reaproveitar código e criar hierarquias de classes mais organizadas.

## Objetivos
- Compreender o conceito de herança na programação orientada a objetos.
- Aprender a utilizar a palavra-chave `extends` em Dart.
- Diferenciar superclasse de subclasse.
- Criar hierarquias simples de classes reutilizando atributos e métodos.
- Identificar casos em que a herança é apropriada.

## Expectativas
Ao final deste roteiro, espera-se que você seja capaz de:
- Criar uma classe base (superclasse) com atributos e métodos.
- Criar subclasses que herdam dessa superclasse.
- Instanciar objetos de subclasses e utilizar métodos herdados.
- Estender o comportamento das classes com novos atributos.

## Superclasse
- Uma superclasse é uma classe genérica que pode ser estendida por outras.
- Em Dart, usamos `extends` para indicar que uma classe herda de outra.

```dart
class Animal {
  String nome;

  Animal(this.nome);

  void emitirSom() {
    print('$nome emite um som.');
  }
}
```

## Subclasse
- Uma subclasse herda atributos e métodos da superclasse.
- Pode adicionar novos comportamentos e atributos.

```dart
class Cachorro extends Animal {
  String raca;

  Cachorro(String nome, this.raca) : super(nome);

  void abanarRabo() {
    print('$nome está abanando o rabo.');
  }
}
```

## Uso de `super`
- Podemos usar `super()` para chamar o construtor da superclasse.
- Também podemos usar `super.nomeDoMetodo()` para acessar métodos da classe mãe, se necessário.

## Exercício Sugerido
1. Crie uma superclasse `Veiculo` com os atributos `marca`, `modelo` e `ano`.
2. Crie uma subclasse `Carro` que herda de `Veiculo` e adiciona `numeroDePortas`.
3. Crie uma subclasse `Moto` que herda de `Veiculo` e adiciona `temCarenagem`.
4. Crie instâncias das subclasses e use os atributos herdados e próprios.

## Conclusão
A herança facilita o reaproveitamento de código e permite organizar melhor as estruturas de dados no seu programa. Saber quando e como usar herança é essencial para escrever código limpo, reutilizável e de fácil manutenção.

- [Exercícios](../EXERCICIOS.md)