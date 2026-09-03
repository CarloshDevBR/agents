---
name: create-viewmodel
description: Cria ou reestrutura ViewModels Android com UiState, eventos, StateFlow e Coroutines. Use quando a tarefa envolver estado de tela, eventos, ViewModel ou lógica de apresentação.
---

# Create ViewModel

Use esta skill ao criar ou reestruturar um ViewModel.

## Processo

1. Identifique o estado observável pela UI.
2. Modele esse estado como UiState imutável.
3. Identifique ações enviadas pela UI.
4. Crie eventos somente quando simplificarem a API.
5. Injete as dependências necessárias pelo construtor.
6. Exponha estado somente como StateFlow imutável.
7. Use viewModelScope para operações relacionadas ao ciclo de vida do ViewModel.

## Verifique

O ViewModel não deve:

- conhecer Composables;
- receber Context sem necessidade;
- acessar Retrofit diretamente;
- acessar Room diretamente;
- conter estado visual exclusivo de componentes simples.
