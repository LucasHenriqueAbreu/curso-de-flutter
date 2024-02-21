# Exercícios sobre Async e Await em Dart

1. **Operações Assíncronas Simples:**
   - Escreva uma função assíncrona que simule uma operação demorada, como aguardar 3 segundos antes de retornar um valor.
   - Utilize a palavra-chave `await` para aguardar o término da operação e retorne o resultado.

2. **Tratamento de Erros:**
   - Modifique a função anterior para lançar uma exceção após um certo período de tempo, simulando um erro.
   - Utilize um bloco try-catch para capturar e lidar com a exceção lançada pela operação assíncrona.

3. **Combinando Múltiplas Operações:**
   - Escreva duas funções assíncronas que realizam operações demoradas diferentes, como aguardar 2 e 3 segundos, respectivamente.
   - Crie uma terceira função que combine essas duas operações e as execute sequencialmente, aguardando o término de uma antes de iniciar a outra.

4. **Operações Assíncronas em Paralelo:**
   - Utilize as duas funções do exercício anterior e execute as operações demoradas em paralelo, utilizando `Future.wait`.
   - Exiba na tela os resultados das duas operações após ambas serem concluídas.

5. **Conversão de Código Síncrono para Assíncrono:**
   - Escolha uma função síncrona existente em seu código e converta-a para uma função assíncrona.
   - Utilize a palavra-chave `await` quando necessário para aguardar o resultado de operações assíncronas.

6. **Operações Assíncronas em Loop:**
   - Escreva um programa que execute uma operação assíncrona em um loop, como fazer uma requisição HTTP a cada segundo.
   - Utilize um loop assíncrono com `await Future.delayed(Duration(seconds: 1))` para aguardar um segundo entre cada iteração do loop.
