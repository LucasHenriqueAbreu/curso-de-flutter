# Roteiro de Aula – Introdução ao Dart

## 2. Por que aprender Dart?

- Linguagem oficial do Flutter (framework da Google)
- Sintaxe moderna e amigável
- Compilação para código nativo (AOT) e JIT
- Ampla aceitação no mercado mobile

## 3. Conhecendo a linguagem Dart

- **História e propósito do Dart**  
  Dart foi criado pelo Google e anunciado em 2011, com o objetivo de oferecer uma alternativa moderna e estruturada ao JavaScript. Ele surgiu como uma linguagem versátil voltada inicialmente para desenvolvimento web, mas logo foi adaptada para outras plataformas como mobile, desktop e servidores. O Dart ganhou grande relevância com o lançamento do Flutter, tornando-se a linguagem oficial para o desenvolvimento de aplicações com esse framework. A missão do Dart é combinar performance, produtividade e escalabilidade, com sintaxe familiar para desenvolvedores que vêm de linguagens como Java, C# ou JavaScript.
- Características principais:
  - **Tipagem estática opcional**  
    Dart é uma linguagem de tipagem estática, mas com inferência de tipos. Isso significa que você pode declarar explicitamente os tipos ou deixar que o compilador deduza com base no valor. A tipagem estática ajuda a detectar erros em tempo de compilação e melhora a manutenção do código. Exemplo:
    ```dart
    int idade = 25; // explícito
    var nome = "Ana"; // inferido como String
    ```

  - **Suporte a orientação a objetos (POO)**  
    Dart é 100% orientado a objetos. Tudo em Dart é um objeto, inclusive tipos primitivos. A linguagem suporta todos os pilares da POO:
    - **Encapsulamento:** usando classes, visibilidade por `private` (com `_`)
    - **Herança:** permite que uma classe herde de outra
    - **Polimorfismo:** métodos podem ser sobrescritos
    - **Abstração:** com classes abstratas e interfaces

  - **Programação assíncrona com `Future`, `async` e `await`**  
    Dart tem suporte nativo a operações assíncronas. O tipo `Future` representa um valor que estará disponível no futuro. Usamos `async` para marcar funções assíncronas e `await` para aguardar o resultado. Isso facilita chamadas a APIs, operações com arquivos e muito mais.
    ```dart
    Future<String> carregarDados() async {
      await Future.delayed(Duration(seconds: 2));
      return "Dados carregados!";
    }
    ```
  
 - **Null Safety**  
   A partir da versão 2.12, o Dart passou a oferecer suporte a **null safety**, ou segurança contra valores nulos. Com esse recurso, variáveis **não podem ser nulas por padrão**, a menos que sejam explicitamente marcadas como tal com `?`.

   Exemplo:
   ```dart
   String nome = 'Lucas'; // não pode ser nulo
   String? apelido;       // pode ser nulo
   ```

   Essa abordagem ajuda a evitar **erros comuns de null pointer**, promovendo mais segurança e robustez no código.
 - **Comparações breves com outras linguagens**  

   | Característica         | Dart                         | JavaScript                    | Java                           | Python                         |
   |------------------------|------------------------------|--------------------------------|--------------------------------|--------------------------------|
   | Tipagem                | Estática opcional             | Dinâmica                       | Estática                       | Dinâmica                       |
   | Compilação             | JIT + AOT                     | Interpretado (JIT via V8)      | Compilado para bytecode        | Interpretado (com bytecode)    |
   | Orientação a objetos   | 100% orientado a objetos      | Baseado em protótipos          | 100% orientado a objetos       | Suporta, mas não obriga        |
   | Sintaxe                | Moderna e clara               | Flexível, mas menos robusta    | Verbosa                        | Simples e legível              |
   | Suporte a async        | `Future`, `async/await` nativo| Promises e `async/await`       | Threads, CompletableFuture     | `asyncio`, `await`, `Future`   |
   | Popularidade           | Crescendo com o Flutter       | Muito popular na web           | Popular no backend e Android   | Muito usado em ciência de dados|


## 3.1. Como o Dart é executado: JIT, AOT e máquina virtual

O Dart possui dois modos de compilação que afetam diretamente sua performance e fluxo de desenvolvimento:

- **JIT (Just-in-Time)**  
  Durante o desenvolvimento, o Dart usa JIT para compilar o código dinamicamente enquanto ele é executado. Isso permite:
  - Hot reload
  - Feedback rápido durante alterações no código
  - Ótimo para desenvolvimento iterativo com Flutter

- **AOT (Ahead-of-Time)**  
Para a produção, Dart compila o código diretamente para código nativo (ARM/x64), resultando em:

> **O que significa ARM/x64?**  
> ARM e x64 são tipos diferentes de arquiteturas de processadores.  
> - **ARM** é amplamente usado em dispositivos móveis como smartphones, tablets e wearables por ser eficiente em consumo de energia.  
> - **x64** é comum em desktops e notebooks, oferecendo maior capacidade de processamento.  
> Ao compilar para essas arquiteturas, o Dart gera um binário otimizado para o tipo de processador alvo.

> **O que é um binário?**  
> O binário é o executável final, ou seja, o código nativo que roda diretamente no sistema operacional do dispositivo. Ele é resultado da compilação do código Dart, pronto para ser executado sem necessidade de máquina virtual no modo AOT.
  - Inicialização mais rápida
  - Melhor desempenho
  - Tamanho reduzido de binário (dependendo da otimização)

### A máquina virtual Dart

- O Dart roda sobre a **Dart VM** (Virtual Machine) durante o desenvolvimento.
- A Dart VM é responsável por interpretar e executar o código Dart em tempo de execução no modo JIT.
- Quando usamos Flutter em modo release, o código é compilado via AOT e **não depende da VM**, gerando executáveis nativos.

Esse modelo híbrido é uma das principais vantagens do Dart para desenvolvimento mobile moderno.

## Exemplo: do código Dart ao código nativo

Vamos entender o que acontece com um código Dart simples quando ele é compilado para produção (modo AOT):

### 👨‍💻 Código Dart original:

```dart
void main() {
  print('Olá, mundo!');
}
```

Esse é o código que você escreve no DartPad ou no VS Code. Ele é simples e legível, e funciona durante o desenvolvimento com a **Dart VM (modo JIT)**.

---

### O que acontece no modo AOT:

Quando você executa `flutter build`, esse código passa por:

1. **Análise e otimização**
2. **Compilação Ahead-of-Time**
3. **Geração de código de máquina nativo** (para ARM ou x64)

---

### Exemplo ilustrativo de saída nativa:

O código final não é mais Dart — é transformado em instruções nativas. Aqui está uma simplificação do que poderia representar esse código:

```assembly
mov x0, #string_address  ; carrega o endereço da string "Olá, mundo!"
bl  dart_print_function  ; chama função nativa de print otimizada
```

Ou ainda, em formato de **binário real** (não legível por humanos):

```
0x000000f4  0x910003e0  0x94000001  ...
```

---

### Resumo visual

| Etapa                    | Representação             |
|--------------------------|---------------------------|
| Código Dart              | `print('Olá, mundo!');`   |
| Compilador AOT           | ↓                         |
| Código de máquina (ARM)  | `mov x0, #addr` + `bl fn` |
| Binário final (`.apk`)   | Arquivo `.so` embutido    |

Esse processo é o que permite que apps Flutter tenham excelente desempenho, mesmo com uma linguagem de alto nível como Dart.

## 4. Configuração do ambiente

- Introdução ao DartPad (https://dartpad.dev)
  - Ambiente online para testes rápidos
- Instalação local (caso necessário)
  - Dart SDK
  - Flutter SDK (para projetos Flutter)
  - VS Code ou Android Studio

## 5. Primeiros passos no DartPad

O [DartPad](https://dartpad.dev) é um ambiente online que permite escrever, executar e compartilhar código Dart sem precisar instalar nada. Vamos começar explorando os conceitos fundamentais da linguagem por meio dele.

### Escrevendo o primeiro programa

```dart
void main() {
  print('Olá, mundo!');
}
```

O método `main()` é o ponto de entrada de qualquer programa Dart. O comando `print()` exibe texto no console.

### Comentários

Existem dois tipos de comentários em Dart:

- Comentário de linha:
  ```dart
  // Isso é um comentário de linha
  ```

- Comentário de bloco:
  ```dart
  /*
    Isso é um comentário
    de múltiplas linhas
  */
  ```

### Declaração de variáveis

Dart permite declarar variáveis de diferentes formas:

- **`var`**: O tipo é inferido automaticamente com base no valor atribuído.
  ```dart
  var nome = 'Lucas'; // tipo inferido como String
  ```

- **`final`**: Valor atribuído **apenas uma vez** (imutável), mas pode ser determinado em tempo de execução.
  ```dart
  final idade = 30;
  final dataAtual = DateTime.now();
  ```

- **`const`**: Valor **constante em tempo de compilação**, ou seja, precisa ser conhecido no momento da compilação.
  ```dart
  const pi = 3.14159;
  const nomeCurso = 'Flutter';
  ```

> ✅ **Resumo**:
>
> | Palavra-chave | Mutável? | Definido em tempo de | Uso comum |
> |---------------|----------|----------------------|-----------|
> | `var`         | Sim      | Execução             | Variáveis comuns |
> | `final`       | Não      | Execução             | Valores fixos definidos em tempo de execução |
> | `const`       | Não      | Compilação           | Constantes conhecidas em tempo de compilação |

### Inferência de tipo e boas práticas

Embora o Dart permita a inferência de tipo, usar tipagem explícita pode melhorar a legibilidade e manutenção do código:

```dart
String nome = 'Maria';
int idade = 25;
double altura = 1.70;
```

### Mini-desafios no DartPad

Proponha à turma os seguintes exercícios práticos para fixar o conteúdo:

- Declarar uma variável para nome, idade e cidade, e exibir com `print`
- Realizar uma soma de dois números e mostrar o resultado
- Criar uma constante com a frase do curso e imprimir
- Usar `final` para armazenar a hora atual (`DateTime.now()`) e exibir

## 6. Encerramento

- Reforçar papel do Dart como base do Flutter
- Orientar prática com exemplos simples
- Esclarecimento de dúvidas
- Recomendação: explorar mais exemplos no DartPad