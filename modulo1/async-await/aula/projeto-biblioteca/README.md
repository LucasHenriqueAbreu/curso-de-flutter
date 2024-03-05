## Exercício de CRUD de Biblioteca em Dart

Neste exercício, você irá desenvolver um sistema de gerenciamento de biblioteca em Dart, utilizando apenas o paradigma funcional, sem interface gráfica ou uso de APIs externas. O objetivo é criar um sistema capaz de realizar as operações básicas de um CRUD (Create, Read, Update, Delete) em uma coleção de livros.

### Instruções:

1. **Configuração do Banco de Dados**:
   - Antes de começar a implementação, você deve configurar um banco de dados MySQL. Utilize o script abaixo para criar a estrutura básica do banco de dados e a tabela necessária para armazenar as informações dos livros:

    ```sql
    CREATE DATABASE IF NOT EXISTS biblioteca;

    USE biblioteca;

    CREATE TABLE IF NOT EXISTS livros (
        id INT AUTO_INCREMENT PRIMARY KEY,
        titulo VARCHAR(255) NOT NULL,
        autor VARCHAR(255) NOT NULL,
        ano_publicacao INT NOT NULL
    );
    ```

2. **Implementação das Funções**:
   - Você deve implementar as seguintes funções no arquivo `biblioteca.dart`:

   - `criarLivro(titulo, autor, anoPublicacao)`: Esta função recebe como parâmetros o título, autor e ano de publicação de um livro, e insere essas informações no banco de dados.

   - `buscarLivro(id)`: Esta função recebe o ID de um livro como parâmetro e retorna as informações (título, autor e ano de publicação) desse livro, se ele existir no banco de dados.

   - `atualizarLivro(id, novoTitulo, novoAutor, novoAnoPublicacao)`: Esta função recebe o ID de um livro e novas informações (título, autor e ano de publicação), e atualiza os dados desse livro no banco de dados.

   - `excluirLivro(id)`: Esta função recebe o ID de um livro e o exclui do banco de dados.

3. **Teste das Funções**:
   - Após implementar todas as funções, crie um programa `main.dart` que irá testar cada uma das funções criadas. Utilize chamadas às funções diretamente no código para demonstrar o funcionamento correto do sistema.


## Caso queira usar docker, segue um docker-compose.yml

```yaml
version: '3.3'
services:
  db:
    image: mysql:5.7
    platform: linux/x86_64
    restart: always
    environment:
      MYSQL_DATABASE: 'biblioteca'
      MYSQL_USER: 'user'
      MYSQL_PASSWORD: 'admin'
      MYSQL_ROOT_PASSWORD: 'admin'
    ports:
      - '3306:3306'
    expose:
      - '3306'
    volumes:
      - my-db:/var/lib/mysql
volumes:
  my-db:
```
