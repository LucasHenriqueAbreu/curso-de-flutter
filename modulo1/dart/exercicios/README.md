


# Lista de Exercícios – Introdução ao Dart

## Parte 1: Sintaxe e fundamentos

1. **Hello, Dart!**  
   Escreva um programa Dart que imprime a mensagem `Olá, Dart!`.

2. **Declaração de variáveis**  
   Crie três variáveis usando `var`, `final` e `const` para representar:
   - O nome de um curso
   - A data atual (`DateTime.now()`)
   - O valor fixo de π (3.1416)

3. **Tipos explícitos**  
   Crie variáveis com tipagem explícita para armazenar:
   - Um nome (String)
   - Uma idade (int)
   - Uma altura (double)
   - Se a pessoa é estudante (bool)

4. **Operações básicas**  
   Faça um programa que declare dois números inteiros, some-os e imprima o resultado.

5. **Interpolação de strings**  
   Imprima uma frase no formato:  
   `Meu nome é João, tenho 20 anos e minha altura é 1.75 metros.`

---

## Parte 2: Controle de fluxo

6. **Condicional simples**  
   Verifique se a idade de uma pessoa é maior ou igual a 18 e imprima se ela é maior de idade.

7. **Condicional múltipla**  
   Crie um programa que recebe a nota de um aluno (de 0 a 10) e imprime:
   - "Aprovado" se a nota for maior ou igual a 7
   - "Recuperação" se for entre 5 e 6.9
   - "Reprovado" se for menor que 5

8. **Laço for**  
   Imprima os números pares de 0 a 20 usando um `for`.

9. **Laço while**  
   Use `while` para contar de 10 até 1, imprimindo os valores.

---

## Parte 3: Funções e null safety

10. **Função simples**  
    Crie uma função chamada `saudar` que recebe um nome e imprime `Olá, [nome]!`.

11. **Função com retorno**  
    Crie uma função que recebe dois números como parâmetros e retorna o maior deles.

12. **Função com parâmetro opcional**  
    Escreva uma função `boasVindas` que recebe o nome e, opcionalmente, a cidade:
    ```dart
    boasVindas("Lucas", "Cascavel");
    // Olá, Lucas! Seja bem-vindo de Cascavel.
    ```

13. **Null safety**  
    Crie uma variável `String? apelido` e imprima uma mensagem apenas se ela não for nula.

---

## Parte 4: Programação assíncrona (extra)

14. **Simulando carregamento**  
    Crie uma função assíncrona que espera 2 segundos e depois imprime `Carregamento concluído`.

    ```dart
    Future<void> carregar() async {
      await Future.delayed(Duration(seconds: 2));
      print('Carregamento concluído');
    }
    ```

15. **Chamada de função `async`**  
    Crie um `main()` que chama essa função corretamente com `await`.