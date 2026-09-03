---
name: android-testing
description: Cria ou modifica testes unitários, de integração ou de UI para código Android. Use quando o pedido exigir testes ou quando uma mudança de comportamento precisar de proteção proporcional ao risco.
---

# Android Testing

Teste comportamento observável, não detalhes internos. Escolha o nível mais barato que reproduza o
risco: unitário, integração ou UI.

- Priorize regras de negócio, ViewModels, repositories, transformações e fluxos críticos.
- Prefira fakes pequenos quando forem suficientes.
- Cubra sucesso, erro e limites relevantes; inclua cancelamento ou concorrência quando houver risco.
- Para coroutines e Flow, use tempo virtual e evite esperas reais.
- Mantenha testes determinísticos e independentes de ordem, rede e estado global.
- Não crie testes apenas para elevar cobertura.

Execute a menor task Gradle que inclua os testes alterados e registre o comando e o resultado.
