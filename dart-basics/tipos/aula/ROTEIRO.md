**Roteiro de Aula: Explorando os Tipos de Dados em Dart**

**Objetivo da Aula:** Esta aula tem como objetivo fornecer uma compreensão abrangente dos tipos de dados embutidos em Dart e como eles são utilizados para armazenar e manipular informações em programas.

**I. Introdução**
- Breve Revisão sobre a Importância dos Tipos de Dados em Programação

    Na programação, os tipos de dados desempenham um papel crucial em diversos aspectos:

    1. **Organização e Estruturação dos Dados:** Os tipos de dados ajudam os programadores a categorizar e manipular diferentes tipos de informações de forma eficiente, contribuindo para a organização e estruturação do código.

    2. **Segurança e Integridade do Código:** O uso adequado de tipos de dados pode garantir a integridade e segurança do código. Tipos fortemente tipados, por exemplo, previnem erros de tipo durante a execução do programa, reduzindo a ocorrência de bugs e facilitando a manutenção do código.

    3. **Eficiência e Desempenho:** Tipos de dados adequados para determinadas operações podem impactar positivamente a eficiência e o desempenho do programa. O uso correto de tipos pode resultar em código mais eficiente, otimizando o uso de memória e recursos do sistema.

    4. **Legibilidade e Manutenibilidade:** A escolha adequada de tipos de dados torna o código mais legível e compreensível. Eles fornecem informações importantes sobre o propósito e a natureza dos dados utilizados no programa, facilitando a compreensão do código por outros desenvolvedores e auxiliando na manutenção do software ao longo do tempo.

    5. **Compatibilidade e Interoperabilidade:** Tipos de dados apropriados facilitam a interoperabilidade e a compatibilidade entre diferentes partes de um sistema de software. Isso é particularmente importante em sistemas complexos nos quais diferentes componentes precisam trocar dados de maneira eficiente e segura.

    Esses pontos destacam a importância fundamental dos tipos de dados na programação e seu impacto em aspectos cruciais do desenvolvimento de software.

- Apresentação dos tipos de dados embutidos em Dart que serão abordados na aula.

**II. Tipos de Dados Embutidos**

1. **int:**
   - Definição: usado para armazenar números inteiros.
   - Exemplo de código:
     ```dart
     int idade = 25;
     int altura = 180;
     int resultado = idade + altura;
     print(resultado); // Saída: 205
     ```

2. **double:**
   - Definição: usado para armazenar números de ponto flutuante.
   - Exemplo de código:
     ```dart
     double preco = 10.99;
     double desconto = 2.50;
     double precoFinal = preco - desconto;
     print(precoFinal); // Saída: 8.49
     ```

3. **String:**
   - Definição: usado para armazenar texto.
   - Exemplo de código:
     ```dart
     String nome = 'João';
     String sobrenome = 'Silva';
     String nomeCompleto = nome + ' ' + sobrenome;
     print(nomeCompleto); // Saída: João Silva
     ```

4. **bool:**
   - Definição: usado para armazenar valores verdadeiros ou falsos.
   - Exemplo de código:
     ```dart
     bool isSunny = true;
     bool isRaining = false;
     print(isSunny); // Saída: true
     ```

5. **List:**
   - Definição: usado para armazenar coleções ordenadas de objetos.
   - Exemplo de código:
     ```dart
     List<int> numeros = [1, 2, 3, 4, 5];
     print(numeros[2]); // Saída: 3
     ```

   - Métodos adicionais:
     - **Adicionar elementos:**
       ```dart
       numeros.add(6);
       print(numeros); // Saída: [1, 2, 3, 4, 5, 6]
       ```
     - **Remover elementos:**
       ```dart
       numeros.remove(2);
       print(numeros); // Saída: [1, 3, 4, 5, 6]
       ```
     - **Ordenar a lista:**
       ```dart
       numeros.sort();
       print(numeros); // Saída: [1, 3, 4, 5, 6]
       ```

6. **Map:**
   - Definição: usado para armazenar coleções não ordenadas de pares chave-valor.
   - Exemplo de código:
     ```dart
     Map<String, String> pessoa = {'nome': 'Ana', 'idade': '30'};
     print(pessoa['nome']); // Saída: Ana
     ```

   - Métodos adicionais:
     - **Verificar se uma chave existe:**
       ```dart
       print(pessoa.containsKey('idade')); // Saída: true
       ```
     - **Obter todas as chaves:**
       ```dart
       print(pessoa.keys); // Saída: (nome, idade)
       ```
     - **Obter todos os valores:**
       ```dart
       print(pessoa.values); // Saída: (Ana, 30)
       ```

**III. Exercícios Práticos**
- Propor uma série de exercícios práticos para que os alunos possam aplicar os conceitos aprendidos.
- Os exercícios podem incluir operações matemáticas, manipulação de strings, criação e manipulação de listas e mapas.

**IV. Discussão e Dúvidas**
- Reservar um tempo para os alunos compartilharem suas experiências durante os exercícios práticos.
- Oferecer esclarecimentos adicionais sobre quaisquer conceitos que ainda não estejam claros.

**V. Conclusão**
- Recapitulação dos principais pontos abordados na aula.
- Incentivar os alunos a praticarem mais e explorarem os tipos de dados em Dart por conta própria.
- Anunciar o tema da próxima aula, se houver.
