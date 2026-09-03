---
name: navigation-compose
description: Cria ou modifica navegação com Navigation Compose preservando rotas, argumentos, grafo e padrões já adotados pelo projeto.
---

# Navigation Compose

Use esta skill ao adicionar destinos, argumentos, deep links ou transições de navegação em um
projeto que já use Navigation Compose.

## Antes de modificar

Identifique:

- onde o grafo e as rotas são definidos;
- se o projeto usa rotas tipadas ou outro mecanismo;
- como dependências e ViewModels são obtidos em cada destino;
- como fluxos de autenticação e grafos aninhados são controlados;
- como argumentos e resultados são transmitidos.

Preserve essas convenções. Não suponha nomes de classes ou objetos de navegação.

## Limites de responsabilidade

- componentes reutilizáveis não devem conhecer o `NavController`;
- ViewModels não devem comandar diretamente o `NavController`;
- prefira callbacks ou estado de navegação na fronteira da tela;
- mantenha a decisão de navegação próxima ao host ou grafo que possui o destino;
- use a operação de voltar da pilha quando a intenção for apenas retornar;
- não duplique destinos ou crie abstrações de navegação sem benefício concreto.

Uma composição comum é:

```text
componente -> callback da tela -> host de navegação -> NavController
```

## Rotas e argumentos

Use a API de rotas já adotada pelo projeto. Quando houver rotas tipadas, preserve tipos e
serialização existentes. Ao trabalhar com argumentos:

- transmita somente os dados necessários para identificar o destino;
- valide entradas externas, como deep links;
- evite transportar objetos grandes ou dependências pela rota;
- restaure dados no destino pela camada apropriada quando necessário.

## Verificação

Após a mudança, verifique o destino novo ou alterado, navegação de volta, argumentos, restauração de
estado e qualquer fluxo condicional afetado.
