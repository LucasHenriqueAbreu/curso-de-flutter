# Classes em Dart
Nesta aula, exploraremos os conceitos fundamentais de classes em Dart, uma linguagem de programação moderna usada principalmente para o desenvolvimento de aplicativos móveis com o framework Flutter. Vamos aprender sobre a definição de classes, criação de instâncias, definição de atributos, construtores, métodos, getters, setters e modificadores de acesso em Dart. Faremos paralelos com conceitos semelhantes em outras linguagens como Java, permitindo uma compreensão abrangente e prática das classes em Dart.

## Objetivos
- Compreender os conceitos fundamentais de classes em Dart.
- Aprender a criar e usar classes para modelar objetos do mundo real.
- Entender a sintaxe do Dart em comparação com outras linguagens, como Java.
- Explorar conceitos avançados, como getters, setters, modificadores de acesso e composição.

## Expectativas
Ao final deste roteiro, espera-se que você seja capaz de:
- Definir classes em Dart.
- Criar instâncias de classes.
- Definir atributos e métodos dentro de uma classe.
- Entender os diferentes tipos de construtores em Dart.
- Utilizar parâmetros posicionais e nomeados nos construtores.
- Implementar métodos em Dart.
- Utilizar propriedades, getters e setters em Dart.
- Compreender os modificadores de acesso em Dart.
- Entender o conceito de composição em programação orientada a objetos.

## Definição de Classes
- Explicação: Classes são estruturas de dados que representam objetos do mundo real. Elas encapsulam dados (atributos) e comportamentos (métodos) relacionados.
- Exemplo de definição de classe em Dart:
  ```dart
  class Pessoa {
    // Atributos e métodos serão adicionados posteriormente
  }
  ```

## Criação de Instâncias
- Em Dart, a criação de uma instância de uma classe é feita simplesmente invocando o construtor da classe.
- Exemplo de criação de instância em Dart:
  ```dart
  var pessoa = Pessoa();
  ```

## Criação de Atributos
- Em Dart, os atributos são definidos dentro do corpo da classe.
- Exemplo de definição de atributos em Dart:
  ```dart
  class Pessoa {
    String nome;
    int idade;
  }
  ```

## Criação do Construtor
- Em Dart, o construtor é definido usando o nome da classe seguido por parâmetros entre parênteses.
- Exemplo de criação de construtores em Dart:
  ```dart
  class Pessoa {
    String nome;
    int idade;

    // Construtor padrão
    Pessoa();

    // Construtor com parâmetros como costumamos fazer em Java
    Pessoa(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    // Construtor com parâmetros posicionais
    Pessoa(this.nome, this.idade);

    // Construtor com parâmetros nomeados
    Pessoa({this.nome, this.idade});
  }
  ```

#### Parâmetros no Construtor
- **Posicionais:** Parâmetros que são passados na ordem em que foram declarados no construtor.
- **Nominais:** Parâmetros que são passados com seus nomes correspondentes.

## Métodos
- Em Dart, os métodos são definidos dentro do corpo da classe e têm uma sintaxe semelhante ao Java.
- Exemplo de métodos em Dart:
  ```dart
  class Pessoa {
    String nome;
    int idade;

    void mostrarDetalhes() {
      print('Nome: $nome, Idade: $idade');
    }
  }
  ```
  
## Modificadores de Acesso no Dart
- Em Dart, não há modificadores de acesso como `public`, `private` ou `protected`. Por padrão, os atributos e métodos são acessíveis dentro da biblioteca onde são definidos.

## Getters e Setters
- Em Dart, os métodos getters e setters são geralmente substituídos por propriedades, que são declaradas diretamente dentro da classe.
- Exemplo de getters e setters em Dart:
  ```dart
  class Pessoa {
    String _nome;
    int _idade;

    String get nome => _nome;
    set nome(String value) => _nome = value;

    int get idade => _idade;
    set idade(int value) => _idade = value;
  }
  ```
## Composição
- A composição é um princípio de design em que uma classe é composta por objetos de outras classes como parte de suas características.
- Exemplo de composição em Dart:
  ```dart
  class Pessoa {
    String nome;
    int idade;
    CPF cpf;

    Pessoa(this.nome, this.idade, this.cpf);
  }

  class CPF {
    String numero;

    CPF(this.numero);
  }
  ```

## Conclusão
Nesta aula, exploramos os conceitos básicos de classes em Dart, aprendemos como criar e usar classes, bem como entender as diferenças e semelhanças com outras linguagens de programação orientada a objetos. Continuar praticando e explorando mais recursos é essencial para aprofundar o conhecimento em Dart e programação orientada a objetos de forma geral.

- [Exercícios](aula/exercicios/EXERCICIOS.md)
