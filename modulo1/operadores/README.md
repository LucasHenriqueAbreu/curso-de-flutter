# Operadores

Operadores são símbolos ou palavras-chave usados para realizar operações em valores. Existem vários tipos de operadores disponíveis no Flutter:

Em Dart, a ordem de precedência dos operadores aritméticos segue as convenções matemáticas padrão. Aqui está a ordem, do mais alto para o mais baixo precedência:

1. Parênteses `()` - utilizados para agrupar expressões e determinar a ordem de avaliação.
2. Exponenciação `**` - usado para calcular potências.
3. Multiplicação `*`, Divisão `/`, e Módulo `%` - multiplicação, divisão e resto da divisão.
4. Adição `+` e Subtração `-` - adição e subtração.

Se houver múltiplos operadores do mesmo nível de precedência, eles são avaliados da esquerda para a direita. Por exemplo, em `4 + 2 * 3`, a multiplicação é feita primeiro porque tem precedência mais alta, resultando em `4 + 6`, e então a adição é feita, resultando em `10`. Se você quiser que a adição seja feita primeiro, você pode usar parênteses para alterar a ordem de avaliação: `(4 + 2) * 3`, que resultaria em `18`.

- Operadores aritméticos: usados para realizar operações matemáticas como adição (+), subtração (-), multiplicação (*), divisão (/) e mais.
- Operadores relacionais: usados para comparar valores e retornar um resultado booleano (==, !=, >, <, >=, <=).
- Operadores lógicos: usados para realizar operações lógicas como E (&&), OU (||) e NÃO (!).
- Operadores de atribuição: usados para atribuir valores a variáveis (=, +=, -=, *=, /=, %=).
- Operador ternário: uma maneira abreviada de escrever declarações simples de if-else (condição ? se_verdadeiro : se_falso).

Esses operadores podem ser usados para realizar operações em valores, variáveis e expressões no Flutter.

## Extras
Visite os seguintes recursos para saber mais:

- [Operadores](https://dart.dev/guides/language/language-tour#operators)
