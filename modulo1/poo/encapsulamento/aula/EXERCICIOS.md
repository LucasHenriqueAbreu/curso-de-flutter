


# Exercícios – Encapsulamento em Dart

## Proposta
Os exercícios abaixo têm como objetivo fixar o conceito de encapsulamento, utilizando atributos privados, getters e setters em Dart.

---

### 1. Criando atributos privados
Crie uma classe `Aluno` com os atributos `_nome`, `_idade` e `_notaFinal`. Torne todos os atributos privados e implemente um construtor.

### 2. Getters e Setters básicos
Na classe `Aluno`, implemente:
- Um getter para `nome`.
- Um setter para `idade` que não permite valores negativos.
- Um getter para `notaFinal`.

### 3. Validação com setters
Crie uma classe `Produto` com os atributos `_nome` e `_preco`. Implemente:
- Um setter que rejeita nomes com menos de 2 caracteres.
- Um setter que não permite preços negativos.

### 4. Lógica adicional nos getters
Na classe `Produto`, crie um getter `precoComDesconto` que retorna o preço com 10% de desconto.

### 5. Classe `ContaBancaria`
Implemente uma classe com os atributos privados `_titular` e `_saldo`. Adicione métodos `depositar` e `sacar`, e um getter para `saldo`.

### 6. Classe `Carro`
Crie uma classe com os atributos `_marca`, `_modelo`, `_velocidadeAtual`. Adicione métodos para acelerar e frear, e proteja a velocidade máxima (não pode passar de 200 km/h).

### 7. Classe `Temperatura`
Crie uma classe com um atributo `_celsius`. Implemente:
- Getter e setter para Celsius.
- Getter para Fahrenheit.

### 8. Classe `Funcionario`
Crie uma classe com atributos `_nome`, `_salario`. Implemente um getter para retornar o salário anual (`salario * 12`).

### 9. Composição com encapsulamento
Crie uma classe `Endereco` com os atributos privados `_rua`, `_numero`, `_cidade`. Use essa classe dentro de uma classe `Pessoa`, também com atributos privados.

### 10. Classe `Nota`
Crie uma classe `Nota` com `_valor`. Use getter e setter para garantir que a nota está entre 0 e 10. Se for fora desse intervalo, deve lançar uma exceção (`throw`).

---

💡 Dica: Para testar seus getters e setters, crie um arquivo `main.dart` e instancie seus objetos com diferentes valores, imprimindo os resultados no console.

---