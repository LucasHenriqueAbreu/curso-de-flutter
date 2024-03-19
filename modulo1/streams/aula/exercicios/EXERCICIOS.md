### Exercício: Criando um Chat Simples com Streams

#### Descrição:
Você foi encarregado de desenvolver um programa que simula um chat entre várias pessoas. Cada pessoa será representada por um objeto na linguagem Dart, e todas as mensagens enviadas pelos participantes serão exibidas em tempo real na tela.

#### Tarefas:
1. Crie uma classe `Chat` que será responsável por gerenciar o fluxo de mensagens do chat.
2. Implemente um método `enviarMensagem(String mensagem, String nome)` na classe `Chat` para que os participantes possam enviar mensagens para o chat.
3. Use um `StreamController` dentro da classe `Chat` para gerenciar o fluxo de mensagens. Certifique-se de usar um `StreamController` do tipo `broadcast` para que várias pessoas possam se inscrever para receber mensagens.
4. Cada mensagem enviada deve incluir o nome do remetente para que seja fácil identificar quem enviou a mensagem.
5. Crie várias instâncias da classe `Chat` para representar diferentes chats entre grupos de pessoas.
6. Envie algumas mensagens de exemplo para cada chat criado.
7. Consuma o stream de mensagens de cada chat e exiba as mensagens recebidas na tela.

#### Observações:
- Certifique-se de que as mensagens sejam exibidas na tela assim que forem enviadas por qualquer participante do chat.
- Você pode adicionar funcionalidades extras, como timestamps nas mensagens ou cores diferentes para cada participante, se desejar.
