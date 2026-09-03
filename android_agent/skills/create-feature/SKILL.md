---
name: create-feature
description: Cria uma funcionalidade Android completa respeitando a arquitetura existente. Use quando a tarefa envolver uma nova feature com UI, ViewModel, dados, navegação ou testes.
---

# Create Android Feature

Use esta skill ao implementar uma nova funcionalidade completa.

## Primeiro

Analise:

- arquitetura existente;
- features semelhantes;
- componentes reutilizáveis;
- repositories existentes;
- modelos existentes;
- navegação existente.

## Determine o mínimo necessário

Não crie automaticamente:

- UseCase;
- Repository;
- interface;
- DataSource;
- Mapper.

Crie apenas os elementos necessários.

## Implementação

Quando aplicável:

1. Model
2. Repository
3. UseCase
4. UiState
5. UiEvent
6. ViewModel
7. Compose Screen
8. Navigation
9. Tests

## Finalização

Execute build ou testes relevantes e corrija problemas introduzidos pela implementação.
