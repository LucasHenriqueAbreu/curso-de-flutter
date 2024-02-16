### Gabarito dos Exercícios sobre Operadores em Dart

#### I. Operadores Aritméticos
1. Calcule a área de um retângulo usando variáveis `base` e `altura`. Utilize os operadores aritméticos apropriados.
```dart
double base = 5;
double altura = 10;
double area = base * altura;
```

#### II. Operadores de Atribuição
2. Crie uma variável `contador` e utilize o operador de atribuição para incrementá-la em 5 unidades.
```dart
int contador = 0;
contador += 5;
```

#### III. Operadores Relacionais e Lógicos
3. Escreva uma expressão que verifique se um número `x` é maior que 10 e menor que 20 ao mesmo tempo.
```dart
int x = 15;
if (x > 10 && x < 20) {
    // Expressão verdadeira
}
```

4. Implemente uma expressão lógica que seja verdadeira se uma variável `a` for par OU uma variável `b` for ímpar.
```dart
int a = 6;
int b = 7;
if (a % 2 == 0 || b % 2 != 0) {
    // Expressão verdadeira
}
```

#### IV. Operadores de Incremento e Decremento
5. Utilize o operador de incremento para adicionar 1 a uma variável `contador`.
```dart
int contador = 0;
contador++;
```

6. Decremente uma variável `tempo` em 10 minutos usando o operador de decremento.
```dart
int tempo = 100;
tempo -= 10;
```

#### V. Mistura de Operadores
7. Escreva uma expressão que valide se um número `y` é divisível por 3 e por 5 ao mesmo tempo.
```dart
int y = 15;
if (y % 3 == 0 && y % 5 == 0) {
    // Expressão verdadeira
}
```

8. Utilize os operadores aritméticos e lógicos para verificar se uma variável `idade` está no intervalo de 18 a 60 anos.
```dart
int idade = 30;
if (idade >= 18 && idade <= 60) {
    // Expressão verdadeira
}
```

#### VI. Desafio
9. Crie uma expressão que utilize múltiplos operadores para calcular o resto da divisão de 357 por 13.
```dart
int resto = 357 % 13;
```

10. Elabore uma expressão que valide se um ano `anoAtual` é bissexto ou não, utilizando operadores lógicos e relacionais.
```dart
int anoAtual = 2024;
if ((anoAtual % 4 == 0 && anoAtual % 100 != 0) || anoAtual % 400 == 0) {
    // Ano bissexto
} else {
    // Não é bissexto
}
```
