## Projeto de Cálculo de Média de Alunos

**Objetivo:**
Desenvolver um pequeno aplicativo em Dart que calcula a média de notas dos alunos.

**Passos:**

1. **Definição da Classe Aluno:**
   - Crie uma classe chamada `Aluno` que tenha os seguintes atributos:
     - `nome` (String): para armazenar o nome do aluno.
     - `notas` (List<double>): para armazenar as notas do aluno.

2. **Método para Calcular Média:**
   - Dentro da classe `Aluno`, crie um método chamado `calcularMedia()` que calcule e retorne a média das notas do aluno.
   - Utilize operadores e métodos adequados para realizar o cálculo da média.

3. **Função Assíncrona para Carregar Alunos:**
   - Crie uma função assíncrona chamada `carregarAlunos()` que simule o carregamento assíncrono de dados.
   - Dentro dessa função, defina um atraso de 2 segundos para simular o carregamento.
   - Crie dados fictícios para alguns alunos com seus respectivos nomes e notas.

4. **Main Function:**
   - Na função `main`, utilize a função `carregarAlunos()` para carregar uma lista de alunos.
   - Para cada aluno na lista, chame o método `calcularMedia()` para calcular e imprimir a média das notas.

**Observações:**
- Utilize os conceitos aprendidos em variáveis, funções, operadores, fluxos de controle, async/await, lambdas e classes para implementar o projeto.
- Certifique-se de que seu código está organizado, com comentários explicativos quando necessário.
