

# 🗺️ Roteiro de Aula: Projeto RPG com POO e Testes Unitários

Este roteiro apresenta uma sequência de atividades para trabalhar os conceitos de Programação Orientada a Objetos em Dart, utilizando um projeto simples de RPG de turnos como base.

---

## ✅ 1. Criando a classe `Personagem`

### Atributos:
- `nome`
- `vida`
- `velocidade`
- `escudo`

### Métodos:
- `atacar(Personagem oponente, int valorDado)`
- `defender(double dano)`
- `estaVivo() → bool`
- `exibirStatus()`

### Testes:
- Deve inicializar com os valores corretos
- Deve reduzir a vida ao defenter e receber dano
- Vida não pode ser menor que zero
- Deve verificar corretamente se está vivo
- Deve aplicar ataque corretamente ao oponente

---

## ✅ 2. Criando a classe `Dado`

### Atributos:
- `lados`

### Métodos:
- `jogarDado() → int`

### Testes:
- Valor gerado deve estar entre 1 e o número de lados
- Um dado de 1 lado deve sempre retornar 1

---

## ✅ 3. Criando a classe `Duelo`

### Atributos:
- `jogador1`, `jogador2`
- `dado`

### Métodos:
- `iniciar()`

### Testes:
- O duelo deve terminar com apenas um jogador vivo
- O personagem com maior velocidade deve começar
- Duelo deve terminar se um jogador tiver pouca vida

---

## ✅ 4. Criando a classe `Heroi`

### Herda de:
- `Personagem`

### Atributos adicionais:
- `reino`
- `missao`

### Testes:
- Deve armazenar corretamente os novos atributos
- Deve funcionar normalmente como um `Personagem`

---

## ✅ 5. Criando a classe `Monstro`

### Herda de:
- `Personagem`

### Atributos adicionais:
- `origem`
- `tipoCriatura`

### Testes:
- Deve armazenar corretamente os novos atributos
- Deve funcionar normalmente como um `Personagem`

---

## 🧪 Teste de integração (opcional)

- Criar duelo entre `Heroi` e `Monstro` com dado fixo
- Garantir que o duelo termina corretamente
- Verificar que atributos adicionais não quebram o funcionamento

---