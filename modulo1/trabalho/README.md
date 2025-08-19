### Descrição do Trabalho

Neste trabalho prático, o objetivo é desenvolver um jogo de RPG por turnos em Dart, utilizando os principais pilares da Programação Orientada a Objetos. O projeto será construído de forma incremental, permitindo aplicar conceitos como classes, encapsulamento, herança, polimorfismo e composição. A cada etapa, serão definidos atributos, comportamentos (métodos) e testes que validam o funcionamento do sistema.

O jogo contará com personagens jogáveis (Heróis) e inimigos (Monstros), cada um com atributos próprios. Posteriormente, o sistema será estendido com Raças e Arquétipos, cada um com habilidades especiais, incentivando o uso de abstrações e heranças.

Cada etapa do trabalho deve conter:
- Implementação da classe ou funcionalidade.
- Criação de testes unitários.
- Aplicação do conceito de POO correspondente.

### Etapas do Desenvolvimento

#### 1. Criando a classe `Personagem`

##### Atributos:
- `nome`
- `vida`
- `velocidade`
- `escudo`

##### Comportamentos (Métodos):
- `atacar` Ação de atacar outro personagem (oponente), causando dano a ele;
  - Deve pegar o valor do dado e esse valor será o dano que será enviado para o oponente;
- `defender` Ação de defender o ataque de outro personagem, recebendo o dano que este oponente causou;
  - Deve receber o dano e descontar o valor do escudo. Se o resultado for negativo, o dano passa a ser zero; caso contrário, é o valor que será descontado da vida.
- `estaVivo` Ação que responde se o personagem está vivo ou não.
- `exibirStatus` Exibe o status atual do personagem.

##### Requisitos (Testes):
- Deve inicializar com os valores corretos.
- Deve reduzir a vida ao defender e receber dano.
- A vida não pode ser menor que zero.
- Deve verificar corretamente se está vivo.
- Deve aplicar ataque corretamente ao oponente.

---

#### 2. Criando a classe `Dado` (Value Object)

##### Atributos:
- `lados`

##### Comportamentos (Métodos):
- `jogarDado()` Sorteia e retorna um número aleatório entre 1 e o número de lados.

##### Requisitos (Testes):
- Valor gerado deve estar entre 1 e o número de lados.
- Um dado de 1 lado deve sempre retornar 1.

---

#### 3. Criando a classe `Duelo`

##### Atributos:
- `jogador1`
- `jogador2`
- `dado`

##### Comportamentos (Métodos):
- `iniciar()` Inicia o duelo entre dois personagens, executando turnos alternados até que um deles perca toda a vida.

##### Requisitos (Testes):
- O duelo deve terminar com apenas um jogador vivo.
- O personagem com maior velocidade deve começar.
- O duelo deve terminar se um jogador tiver pouca vida.

---

#### 4. Criando a classe `Heroi`

##### Herda de:
- `Personagem`

##### Atributos adicionais:
- `reino`
- `missao`

##### Comportamentos (Métodos):
- Os mesmos de `Personagem`, com novos atributos adicionados apenas para armazenar mais informações.

##### Requisitos (Testes):
- Deve armazenar corretamente os novos atributos.
- Deve funcionar normalmente como um `Personagem`.

---

#### 5. Criando a classe `Monstro`

##### Herda de:
- `Personagem`

##### Atributos adicionais:
- `origem`
- `tipoCriatura`

##### Comportamentos (Métodos):
- Os mesmos de `Personagem`, com novos atributos adicionados apenas para armazenar mais informações.

##### Requisitos (Testes):
- Deve armazenar corretamente os novos atributos.
- Deve funcionar normalmente como um `Personagem`.

---

#### 6. Criando a classe abstrata `Raca`

##### Atributos:
- Atributos que influenciam vida, poder e defesa.

##### Comportamentos (Métodos):
- `habilidadeEspecial()` Método que define o comportamento único de cada raça (aplicando polimorfismo).

##### Exemplo de subclasses:
- `Elfo`, `Orc`, `Humano`

##### Requisitos (Testes):
- Criação correta das instâncias.
- Verificação da aplicação de bônus.
- Execução das habilidades específicas.

---

#### 7. Criando a classe abstrata `Arquetipo`

##### Atributos:
- Modificadores de atributos como ataque, escudo e velocidade.

##### Comportamentos (Métodos):
- `habilidadeEspecial()` Método que define o comportamento único de cada arquétipo (aplicando polimorfismo).

##### Exemplo de subclasses:
- `Guerreiro`, `Mago`, `Arqueiro`

##### Requisitos (Testes):
- Validação dos modificadores de atributos.
- Execução das habilidades específicas.

---

#### 8. Integração de `Raca` e `Arquetipo` ao `Personagem`

##### Atributos:
- `raca`
- `arquetipo`

##### Comportamentos (Métodos):
- No construtor: incorporar os bônus da raça e do arquétipo ao criar o personagem.
- Permitir a execução das habilidades herdadas de cada uma.

##### Requisitos (Testes):
- Composição correta dos atributos finais.
- Funcionamento esperado das habilidades.
- Garantia de compatibilidade com o sistema de duelo.

---

#### 🧪 Teste de Integração (opcional)

##### Objetivo:
- Criar duelo entre `Heroi` e `Monstro` com dado fixo.
- Verificar se o duelo termina corretamente.
- Validar se os atributos adicionais e habilidades funcionam como esperado.
