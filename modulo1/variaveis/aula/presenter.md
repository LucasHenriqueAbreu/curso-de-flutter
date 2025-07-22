---
theme: gaia
_class: lead
paginate: true
backgroundColor: #fff
backgroundImage: url('../../../assets/background.svg')
marp: true
---

![bg left:40% 80%](../../../assets/logo.png)

# **Programação Mobile**
### Módulo 1
#### Variáveis
##### Prof. Lucas Henrique de Abreu

---

# Introdução às variáveis

- Armazenam valores temporários
- Permitem reutilização de dados
- Base para controle, lógica e estado

```dart
var nome = 'Lucas';
print('Olá, $nome!');
```

---

# Tipos de variáveis

```dart
var idade = 25;          // tipo inferido
dynamic valor = 'texto'; // tipo pode mudar
final data = DateTime.now(); // imutável em runtime
const pi = 3.14159;      // constante em tempo de compilação
```

| Palavra-chave | Mutável? | Tempo de definição |
|---------------|----------|---------------------|
| `var`         | Sim      | Execução            |
| `dynamic`     | Sim      | Execução (sem tipo) |
| `final`       | Não      | Execução            |
| `const`       | Não      | Compilação          |

---

# Tipagem explícita e inferência

```dart
String curso = 'Flutter';
int duracao = 40;
double nota = 8.5;
bool aprovado = true;

var cidade = 'Curitiba'; // tipo inferido
```

- Melhor leitura com tipos explícitos

---

# Escopo de variáveis

```dart
class Pessoa {
  String nome = 'Lucas';        // instância
  static String pais = 'Brasil'; // classe

  void saudacao() {
    var msg = 'Bem-vindo';      // local
    print('$msg, $nome!');
  }
}
```

- Locais: dentro de funções
- Instância: em objetos
- Classe: com `static`

---

# Boas práticas com variáveis

- Use `camelCase`
- Prefira `final` quando possível
- Evite `dynamic` se puder usar tipagem estática
- Use `const` para constantes literais e de compilação

---

# Diferença entre `final` e `const`

```dart
final agora = DateTime.now(); // execução
const ano = 2025;             // compilação
```

- `final`: inicializa em runtime
- `const`: valor fixo em compile-time

---

# Mini-desafios com DartPad

- Criar variáveis com nome, idade e cidade
- Imprimir uma frase com interpolação
- Fazer soma de dois inteiros
- Usar `final` com `DateTime.now()`
- Criar uma `const` com nome de curso

---

# Encerramento

![bg left:40% 80%](../../../assets/logo.png)

- Variáveis são base da linguagem
- Compreender escopo e tipos é essencial
- Explorar mais no DartPad
- Praticar com os exercícios