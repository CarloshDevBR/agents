---
name: compose-screen
description: Cria ou modifica telas Android com Jetpack Compose, incluindo componentes, estado local, previews e integração com ViewModel. Não use para interfaces baseadas exclusivamente em Views/XML.
---

# Compose Screen

Examine telas semelhantes e o design system antes de criar componentes. Preserve tema, convenções
de estado e estratégia de navegação existentes.

## Invariantes

- Composables renderizam estado e comunicam ações; regras de negócio ficam fora da UI.
- Mantenha componentes reutilizáveis stateless quando isso simplificar uso e teste.
- Somente a fronteira da tela deve obter ViewModel ou dependências de navegação.
- Não extraia componentes sem ganho de clareza ou reutilização.
- Não mantenha em ViewModel estado puramente efêmero de um componente visual.

## Processo

1. Identifique estados observáveis e interações.
2. Reutilize tema e componentes existentes.
3. Implemente loading, conteúdo, vazio e erro quando fizerem parte do comportamento.
4. Adicione previews úteis quando o projeto os adotar.
5. Verifique recomposição, restauração, acessibilidade e compilação.

## Referências

- Leia [estado e efeitos](references/state-and-effects.md) quando houver estado, efeitos ou integração
  com lifecycle.
- Leia [acessibilidade](references/accessibility.md) quando criar ou alterar elementos interativos.
