---
name: create-repository
description: Cria ou modifica repositories Android e integra fontes locais ou remotas. Use quando a tarefa envolver API, Room, DataStore, Firebase, DataSource ou acesso a dados.
---

# Create Repository

Use esta skill ao criar ou modificar repositories.

## Antes

Procure:

- interfaces existentes;
- APIs;
- DAOs;
- DataStore;
- models;
- mappers.

## Processo

1. Identifique o contrato necessário pelas camadas superiores.
2. Determine as fontes de dados necessárias.
3. Crie interface somente quando houver motivo arquitetural ou de testabilidade.
4. Implemente o repository.
5. Faça conversões entre modelos quando necessário.
6. Defina claramente tratamento e propagação de erros.
7. Adicione testes quando houver lógica relevante.

## Não faça

Não crie:

```text
Repository -> UseCase -> Manager -> Service
```

para simplesmente chamar uma única função da API.
