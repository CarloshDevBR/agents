---
name: android-navigation
description: Cria ou modifica destinos, rotas, argumentos, deep links e fluxo de retorno em aplicativos Android. Use a solução de navegação existente; não presuma Navigation Compose.
---

# Android Navigation

Identifique primeiro o host, a representação de rotas, grafos aninhados, obtenção de ViewModels e
fluxos condicionais existentes.

- Preserve a biblioteca e a convenção de rotas adotadas.
- Componentes reutilizáveis e ViewModels não controlam diretamente o navegador.
- Prefira callbacks ou estado na fronteira da tela.
- Transmita somente dados necessários para identificar o destino.
- Valide entradas externas, especialmente deep links.
- Evite transportar objetos grandes ou dependências em argumentos.
- Use a operação de retorno da pilha quando a intenção for apenas voltar.

Verifique ida, volta, argumentos, deep links, restauração de estado e fluxos condicionais afetados.
