### Trabalho Prático: Jogo de RPG com POO em Dart

#### Descrição:
Neste trabalho prático, você será desafiado a construir um sistema de batalha RPG em Dart, aplicando os principais conceitos da Programação Orientada a Objetos. O jogo será em turnos, com personagens que possuem atributos, habilidades e interagem entre si com base em regras definidas. Seu projeto deve conter classes bem estruturadas, uso de herança, encapsulamento, composição e polimorfismo, além de testes unitários cobrindo o comportamento das principais funcionalidades.

---

### Etapas do Desenvolvimento

#### 1. Classe `Personagem`
- Atributos básicos: nome, vida, velocidade, escudo.
- Métodos: atacar, receber dano, verificar se está vivo, exibir status.
- Testes: validação da vida, ataque, e funcionamento dos métodos.

#### 2. Classe `Dado` (Value Object)
- Atributo: quantidade de lados.
- Método: jogarDado() → sorteia um valor entre 1 e o número de lados.
- Testes: garante sorteio dentro do intervalo permitido.

#### 3. Classe `Duelo`
- Gerencia uma batalha entre dois personagens.
- Define quem começa baseado na velocidade.
- Executa os turnos até que um personagem perca.
- Testes: validação do funcionamento do duelo.

#### 4. Herança com `Heroi` e `Monstro`
- Ambas as classes herdam de `Personagem`.
- Cada uma possui atributos adicionais próprios.
- Testes: criação, atributos específicos e integração com duelo.

#### 5. Criando a classe abstrata `Raca`
- Define atributos padrão que influenciam vida, poder e defesa.
- Crie ao menos 3 subclasses, como: Elfo, Orc, Humano.
- Cada raça deve ter uma habilidade especial (polimorfismo).
- Testes: verificação das instâncias e habilidades.

#### 6. Criando a classe abstrata `Arquetipo`
- Define modificadores de atributos e características do personagem.
- Crie subclasses como: Guerreiro, Mago, Arqueiro.
- Cada arquétipo também deve possuir habilidade especial.
- Testes: validação dos modificadores e habilidades.

#### 7. Integração de Raça e Arquétipo ao Personagem
- Modifique a classe `Personagem` (ou `Heroi`) para receber `Raca` e `Arquetipo`.
- Calcule os atributos finais somando os bônus de cada uma.
- Permita executar as habilidades da raça e do arquétipo.
- Testes: garantir a composição correta dos atributos.

---

###  Objetivo Final
Criar um duelo com personagens completos (herói ou monstro), utilizando raça, arquétipo e testes unitários cobrindo o funcionamento do jogo.

---

### Avaliação:
- Organização do código e uso correto dos conceitos de POO.
- Estrutura clara e lógica das classes.
- Testes cobrindo o comportamento esperado.
- Entendimento demonstrado na apresentação.

---

### Observações:
- Documente bem seu código.
- Divirta-se explorando os conceitos de herança, composição e polimorfismo!
- Você pode expandir seu projeto com novos personagens, magias ou fases!

---

### Preparação para a Apresentação:
- Explique a estrutura das classes e a motivação das escolhas.
- Destaque os pontos de POO usados: encapsulamento, herança, composição, polimorfismo.
- Comente as dificuldades encontradas e como foram superadas.
