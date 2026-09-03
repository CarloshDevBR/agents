---
name: write-tests
description: Cria testes para código Android, incluindo regras de negócio, ViewModels, repositories e fluxos críticos. Use quando a tarefa envolver unit tests, integration tests ou UI tests.
---

# Write Android Tests

Use esta skill ao criar testes.

## Processo

1. Identifique o comportamento que precisa ser garantido.
2. Determine se deve ser unit test, integration test ou UI test.
3. Prefira dependências fake simples.
4. Organize testes em Arrange / Act / Assert quando apropriado.
5. Teste comportamento observável.
6. Cubra sucesso, erro e casos limites relevantes.
7. Execute os testes após implementá-los.

## Prioridade

Priorize:

1. regras de negócio;
2. ViewModels;
3. repositories;
4. transformações;
5. fluxos críticos.

Não crie testes apenas para aumentar cobertura.
