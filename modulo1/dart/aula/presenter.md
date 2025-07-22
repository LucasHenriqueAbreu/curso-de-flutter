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
#### Conhecendo Dart
##### Prof. Lucas Henrique de Abreu

---

# Por que aprender Dart?

- Linguagem oficial do Flutter (Google)
- Sintaxe moderna e amigável
- Compilação JIT (desenvolvimento) e AOT (produção)
- Crescimento no mercado mobile

---

# História e propósito do Dart

- Criado pelo Google em 2011
- Alternativa moderna ao JavaScript
- Inicialmente voltado à web, depois mobile, desktop e servidores
- Ganhou força com o Flutter

---

# Características principais

- Tipagem estática com inferência
- 100% orientado a objetos
- Suporte a async com `Future`, `async/await`
- Null safety

---

# Tipagem em Dart

```dart
int idade = 25;        // tipo explícito
var nome = "Ana";      // tipo inferido
```

- Estática e opcional
- Verificação em tempo de compilação

---

# Orientação a Objetos

- Tudo é objeto, inclusive tipos primitivos
- Suporte aos pilares da POO:
  - Herança
  - Encapsulamento
  - Polimorfismo
  - Abstração

---

# Async com `Future`, `async`, `await`

```dart
Future<String> carregarDados() async {
  await Future.delayed(Duration(seconds: 2));
  return "Dados carregados!";
}
```

- Código assíncrono mais legível

---

# Null Safety

```dart
String nome = 'Lucas';   // não nulo
String? apelido;         // pode ser nulo
```

- Reduz erros de null pointer
- Desde Dart 2.12

---

# Comparações com outras linguagens

| Recurso         | Dart   | JavaScript | Java  | Python |
|-----------------|--------|------------|-------|--------|
| Tipagem         | Estática opcional | Dinâmica | Estática | Dinâmica |
| Compilação      | JIT + AOT | JIT via V8 | Bytecode | Interpretado |
| OOP             | Completo | Protótipos | Completo | Suporte |
| Async           | `Future` | `Promise` | `Future` | `asyncio` |

---

# JIT e AOT

- **JIT (Just-in-Time)**:
  - Compilação durante execução
  - Hot reload
  - Usado no desenvolvimento
- **AOT (Ahead-of-Time)**:
  - Compilação para nativo (ARM/x64)
  - Rápida inicialização e melhor performance

---

# O que é ARM/x64?

- ARM: dispositivos móveis (eficiência energética)
- x64: desktops e notebooks (alto desempenho)
- Binário = código executável nativo para o processador

---

# Exemplo: Código Dart vs Binário

```dart
void main() {
  print('Olá, mundo!');
}
```

Compilado para algo como:

```assembly
mov x0, #string_address
bl dart_print_function
```

Ou em binário:

```
0x910003e0 0x94000001 ...
```

---

# Configurando o ambiente

- [DartPad](https://dartpad.dev)
  - Online, sem instalação
- Local:
  - Dart SDK
  - Flutter SDK
  - VS Code ou Android Studio

---

# Primeiros passos no DartPad

```dart
void main() {
  print('Olá, mundo!');
}
```

- Ponto de entrada: `main()`
- Função `print()`

---

# Comentários

```dart
// Comentário de linha

/*
  Comentário de bloco
*/
```

---

# Variáveis: `var`, `final`, `const`

```dart
var nome = 'Lucas';
final idade = 30;
const pi = 3.14;
```

| Palavra-chave | Mutável? | Definido em tempo de |
|---------------|----------|------------------------|
| `var`         | Sim      | Execução               |
| `final`       | Não      | Execução               |
| `const`       | Não      | Compilação             |

---

# Inferência e boas práticas

```dart
String nome = 'Maria';
int idade = 25;
double altura = 1.70;
```

- Tipagem explícita melhora legibilidade

---

# Mini-desafios com DartPad

- Criar variáveis com nome, idade, cidade
- Fazer soma de dois números
- Criar constante com frase e imprimir
- Usar `DateTime.now()` com `final`

---

# Encerramento

![bg left:40% 80%](../../../assets/logo.png)

- Reforçar Dart como base do Flutter
- Praticar no DartPad
- Esclarecer dúvidas
- Quizz https://wayground.com/admin/quiz/687ee7ba599243b76d80a830?at=687ee7ba2d78b21b3361b969

---

