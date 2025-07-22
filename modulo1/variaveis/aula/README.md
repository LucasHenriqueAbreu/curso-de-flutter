


# Variáveis em Dart

## Exemplos práticos com `print`
```dart
var nome = 'Lucas';
print('Olá, $nome!');
```

## Tipos de variáveis
```dart
var idade = 25;          // tipo inferido
dynamic valor = 'texto'; // pode mudar para número depois
final data = DateTime.now(); // definido em tempo de execução
const pi = 3.14159;      // constante em tempo de compilação
```

## Tipagem explícita e inferência
```dart
String curso = 'Flutter';
int duracao = 40;
double nota = 8.5;
bool aprovado = true;

var cidade = 'Curitiba'; // tipo inferido como String
```

## Escopo de variáveis
```dart
class Pessoa {
  String nome = 'Lucas';        // variável de instância
  static String pais = 'Brasil'; // variável de classe

  void saudacao() {
    var mensagem = 'Bem-vindo'; // variável local
    print('$mensagem, $nome!');
  }
}
```

## Diferença entre `final` e `const` na prática
```dart
final agora = DateTime.now(); // pode variar a cada execução
const ano = 2025;             // valor fixo e imutável
```