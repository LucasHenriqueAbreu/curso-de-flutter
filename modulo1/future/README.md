# Futures

Futures no Flutter são uma maneira de representar um valor potencial que estará disponível em algum momento no futuro. Alguns pontos-chave sobre Futures no Flutter:

- Futures são usados para programação assíncrona no Flutter.
- Futures retornam um único valor (ou um erro) e são frequentemente usados com `async` e `await`.
- O método `then` pode ser usado para anexar um retorno de chamada a um Future que será executado uma vez que o valor do Future estiver disponível.
- Futures podem ser combinados com outros Futures usando os métodos `Future.wait` ou `Future.whenComplete`.
- Futures são frequentemente usados com solicitações de rede, operações de E/S de arquivos e outras tarefas demoradas no Flutter.

Saiba mais nos seguintes recursos:

- [Futures e Manipulação de Erros](https://dart.dev/guides/libraries/futures-error-handling)
- [Aula](aula/README.md)
- [Exercícios](aula/exercicios/EXERCICIOS.md)
