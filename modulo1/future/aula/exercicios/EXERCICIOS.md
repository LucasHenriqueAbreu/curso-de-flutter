# Exercícios de Futures em Dart

1. **Leitura de Arquivo:**
   - Escreva uma função que receba o caminho de um arquivo como entrada e retorne um Future com o conteúdo do arquivo.
   - Crie um programa que utilize essa função para ler o conteúdo de um arquivo e o exiba na tela.

2. **Requisição HTTP Assíncrona:**
   - Faça uma requisição HTTP assíncrona para uma API pública (por exemplo, a API do GitHub) usando a biblioteca http.
   - Exiba na tela o resultado da requisição, como o título de um repositório ou uma lista de commits.

3. **Operações Matemáticas Assíncronas:**
   - Escreva uma função que realize uma operação matemática complexa, como calcular o fatorial de um número grande, de forma assíncrona.
   - Crie um programa que utilize essa função para calcular o fatorial de um número e exiba o resultado.

4. **Combinando Múltiplos Futures:**
   - Escreva uma função que realize duas tarefas assíncronas diferentes, como ler o conteúdo de dois arquivos.
   - Combine esses Futures usando `Future.wait` e exiba na tela os resultados de ambas as tarefas quando estiverem completas.

5. **Tratamento de Erros:**
   - Modifique uma das funções anteriores para simular um erro, como tentar ler um arquivo que não existe.
   - Utilize o método `catchError` para lidar com o erro e exibir uma mensagem adequada na tela.

6. **Temporizador Assíncrono:**
   - Escreva uma função que retorne um Future após um determinado intervalo de tempo, como um temporizador assíncrono.
   - Utilize essa função para criar um programa que exiba uma mensagem após um certo tempo de espera.
