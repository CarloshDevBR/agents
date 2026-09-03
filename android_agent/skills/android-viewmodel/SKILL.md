---
name: android-viewmodel
description: Cria ou modifica ViewModels Android, estado observável e lógica de apresentação. Use para estado de tela, concorrência ou integração entre UI e dados; não use para estado exclusivamente local de um componente visual.
---

# Android ViewModel

Examine ViewModels semelhantes e preserve o mecanismo de estado existente.

## Invariantes

- Exponha estado somente para leitura e atualize-o de forma imutável.
- Modele apenas informações observáveis necessárias à UI.
- Não referencie Composables, Views ou controladores de navegação.
- Não acesse diretamente clientes de rede, DAOs ou preferências.
- Injete dependências explicitamente.
- Preserve cancelamento e impeça operações antigas de sobrescrever resultados novos.
- Diferencie estado durável de efeitos transitórios.

## Processo

1. Defina o comportamento observável e estados válidos.
2. Escolha callbacks ou eventos conforme a clareza da API existente.
3. Implemente sucesso, erro e cancelamento relevantes.
4. Cubra comportamento e concorrência de risco com testes.

## Referências

- Leia [coroutines](references/coroutines.md) para trabalho assíncrono, busca, debounce ou operações concorrentes.
- Leia [modelagem de estado](references/ui-state.md) quando houver múltiplas fases ou efeitos.
