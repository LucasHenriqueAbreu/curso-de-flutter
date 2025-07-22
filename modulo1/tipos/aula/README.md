# Explorando os Tipos de Dados em Dart

## Objetivo da Aula
Compreender os principais tipos de dados embutidos em Dart e como utilizá-los de forma eficaz para armazenar e manipular informações em programas.

---

## I. Introdução: A Importância dos Tipos de Dados

Os tipos de dados são fundamentais em qualquer linguagem de programação. Eles impactam diretamente:

1. **Organização e Estruturação:** Ajudam a classificar e tratar as informações corretamente.
2. **Segurança do Código:** Reduzem bugs, ao evitar uso inadequado de valores.
3. **Eficiência e Desempenho:** Contribuem para otimização de memória e tempo de execução.
4. **Legibilidade e Manutenção:** Tornam o código mais compreensível para desenvolvedores.
5. **Interoperabilidade:** Facilitam a comunicação entre diferentes partes de um sistema.

> Em Dart, o uso de tipos é ainda mais relevante, pois a linguagem adota tipagem estática com inferência, promovendo segurança e clareza.

---

## II. Tipos de Dados Embutidos em Dart

### 1. `int` – Números Inteiros
```dart
int idade = 25;
int altura = 180;
print(idade + altura); // 205
```

### 2. `double` – Números de Ponto Flutuante
```dart
double preco = 10.99;
double desconto = 2.50;
print(preco - desconto); // 8.49
```

### 3. `String` – Texto
```dart
String nome = 'João';
String sobrenome = 'Silva';
print('$nome $sobrenome'); // João Silva
```

### 4. `bool` – Valores Lógicos
```dart
bool isSunny = true;
bool isRaining = false;
print(isSunny); // true
```

### 5. `List<T>` – Listas Ordenadas
```dart
List<int> numeros = [1, 2, 3];
numeros.add(4);
print(numeros); // [1, 2, 3, 4]
```
Outras operações:
```dart
numeros.remove(2);
numeros.sort();
```

### 6. `Map<K, V>` – Pares Chave-Valor
```dart
Map<String, String> pessoa = {'nome': 'Ana', 'idade': '30'};
print(pessoa['nome']); // Ana
```
Operações úteis:
```dart
pessoa.containsKey('idade');
pessoa.keys;
pessoa.values;
```

---

## III. Exercícios Práticos

Proponha aos alunos:
- Realizar operações matemáticas com `int` e `double`
- Manipular `String` com concatenação e métodos
- Criar e modificar listas (`add`, `remove`, `sort`)
- Criar mapas e acessar seus elementos

---

## IV. Discussão e Dúvidas

- Incentive os alunos a compartilhar dificuldades.
- Resolva dúvidas sobre uso e comportamento dos tipos.

---

## V. Conclusão

- Recapitulação dos principais conceitos.
- Reforce a prática como meio de domínio da linguagem.
- Apresente o tema da próxima aula.

---
