---
name: create-compose-screen
description: Cria ou modifica telas Android nativas usando Kotlin e Jetpack Compose. Use quando a tarefa envolver Screen, UiState, UiEvent, ViewModel, state hoisting, componentes Compose ou Preview.
---

# Create Compose Screen

Use esta skill ao criar ou modificar uma tela Jetpack Compose.

## Processo

1. Analise telas e componentes existentes relacionados.
2. Identifique componentes reutilizáveis do Design System.
3. Identifique o estado necessário para a tela.
4. Crie ou atualize o UiState.
5. Crie eventos somente quando necessários.
6. Crie a Screen responsável pela integração com o ViewModel.
7. Crie um Content stateless para a interface.
8. Extraia componentes apenas quando houver benefício.
9. Adicione Preview quando possível.
10. Verifique imports e compilação.

## Antes de criar componentes novos

Procure por componentes existentes equivalentes no projeto.

Reutilize-os quando atenderem ao requisito.

## Finalização

Após implementar:

1. verifique erros de compilação;
2. remova imports não utilizados;
3. verifique estados loading/error/content;
4. confirme que nenhum ViewModel foi passado para componentes filhos.
