# Roteiro de Aula: Introdução às Funções Lambda em Dart

## Objetivos da Aula:
- Compreender o conceito de funções lambda em Dart.
- Identificar as diferenças entre funções lambda e funções tradicionais.
- Entender a relação das funções lambda com os tipos de retorno.
- Aplicar funções lambda em situações práticas.
- Escrever código mais conciso e expressivo utilizando funções lambda.

## Expectativas:
- Ao final da aula, os alunos devem ser capazes de entender e aplicar funções lambda em seus próprios projetos Dart.
- Os alunos devem ser capazes de distinguir quando usar funções lambda e quando usar funções tradicionais para resolver problemas específicos.
- Os alunos devem sentir-se confiantes para explorar e experimentar com funções lambda em diferentes contextos de programação.

## Conteúdo da Aula:

### 1. Introdução às Funções Lambda

As funções lambda, também conhecidas como funções anônimas ou closures, são uma característica fundamental em Dart. Elas permitem que você crie funções de forma concisa e inline. Uma função lambda pode ser definida usando a sintaxe `(parâmetros) => expressão`. Vamos ver um exemplo simples:

```dart
void main() {
  // Exemplo de função lambda que dobra um número
  int Function(int) dobrar = (int numero) => numero * 2;
  
  // Chamando a função lambda
  print(dobrar(5)); // Saída: 10
}
```

### 2. Relação das Funções Lambda com Tipos de Retorno

As funções lambda em Dart podem ter qualquer tipo de retorno, incluindo `void`. Isso significa que você pode especificar o tipo de retorno explicitamente ou deixar que o tipo de retorno seja inferido pelo Dart. Se uma função lambda não retornar nenhum valor, o tipo de retorno será `void`. Isso é útil em situações onde a função lambda é utilizada como um callback que não precisa retornar nenhum valor específico.

#### Exemplo de Função Lambda com Tipo de Retorno Explícito:

```dart
int Function(int, int) soma = (int a, int b) => a + b;
```

#### Exemplo de Função Lambda com Tipo de Retorno Inferido:

```dart
var dobrar = (int numero) => numero * 2;
```

#### Exemplo de Função Lambda com Tipo de Retorno `void`:

```dart
void Function() imprimirMensagem = () => print("Olá, mundo!");
```

### 3. Diferenças entre Funções Lambda e Funções Tradicionais

As funções lambda têm algumas diferenças importantes em relação às funções tradicionais em Dart. Uma das principais diferenças está na sintaxe. Funções lambda são mais concisas e podem ser definidas inline. Vamos comparar as duas:

#### Exemplo de Função Tradicional:
```dart
int soma(int a, int b) {
  return a + b;
}
```

#### Exemplo de Função Lambda Equivalente:
```dart
int Function(int, int) soma = (int a, int b) => a + b;
```

### 4. Benefícios das Funções Lambda

O uso de funções lambda pode tornar o código mais conciso e legível. Elas são especialmente úteis ao lidar com operações de filtragem, mapeamento e redução de coleções. Vamos ver um exemplo de filtragem de uma lista usando uma função lambda:

```dart
void main() {
  List<int> numeros = [1, 2, 3, 4, 5];
  
  // Usando função lambda para filtrar números pares
  List<int> numerosPares = numeros.where((numero) => numero % 2 == 0).toList();
  
  print(numerosPares); // Saída: [2, 4]
}
```

### 5. Exercício Prático

**Exercício:**
Dado uma lista de strings, crie uma função lambda que filtre todas as palavras que começam com a letra 'A' e retorne uma nova lista com essas palavras. Em seguida, imprima essa nova lista.

```dart
void main() {
  List<String> palavras = ['Abacaxi', 'Banana', 'Amora', 'Cenoura', 'Maçã'];
  
  // Função lambda para filtrar palavras que começam com 'A'
  List<String> palavrasComA = palavras.where((palavra) => palavra.startsWith('A')).toList();
  
  print(palavrasComA); // Saída: [Abacaxi, Amora]
}
```

### 6. Discussão e Conclusão

Revisão dos conceitos abordados na aula. Oportunidade para os alunos compartilharem suas soluções para o exercício prático. Resumo dos principais pontos e conclusão da aula.
