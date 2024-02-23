# Exercícios de Futures em Dart com async/await

1. **Leitura de Arquivo com async/await:**
   - Escreva uma função que receba o caminho de um arquivo como entrada e utilize `async` e `await` para retornar o conteúdo do arquivo em um Future.
   - Crie um programa que utilize essa função para ler o conteúdo de um arquivo e o exiba na tela.

2. **Requisição HTTP Assíncrona com async/await:**
   - Faça uma requisição HTTP assíncrona para uma API pública (por exemplo, a API do GitHub) usando a biblioteca http e utilize `async` e `await` para aguardar a resposta.
   - Exiba na tela o resultado da requisição, como o título de um repositório ou uma lista de commits.

4. **Combinando Múltiplos Futures com async/await:**
   - Escreva uma função que realize duas tarefas assíncronas diferentes, como ler o conteúdo de dois arquivos, utilizando `async` e `await`.
   - Combine esses Futures utilizando `Future.wait` e exiba na tela os resultados de ambas as tarefas quando estiverem completas.

5. **Tratamento de Erros com async/await:**
   - Modifique uma das funções anteriores para simular um erro, como tentar ler um arquivo que não existe, e utilize `try-catch` com `async` e `await` para lidar com o erro e exibir uma mensagem adequada na tela.

6. **Temporizador Assíncrono com async/await:**
   - Escreva uma função que retorne um Future após um determinado intervalo de tempo, como um temporizador assíncrono, utilizando `async` e `await`.
   - Utilize essa função para criar um programa que exiba uma mensagem após um certo tempo de espera.
