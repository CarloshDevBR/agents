---
name: create-android-feature
description: Implementa funcionalidades Android que atravessam duas ou mais áreas, como UI, estado, dados, navegação e testes. Para mudanças isoladas em uma área, use a skill Android especializada correspondente.
---

# Create Android Feature

Use esta skill como coordenadora de mudanças transversais.

1. Inspecione arquitetura, módulos, feature semelhante, design system, navegação e testes existentes.
2. Defina comportamento observável, dados necessários e critérios de conclusão.
3. Determine o menor conjunto de camadas e arquivos afetados.
4. Implemente em incrementos coerentes, preservando APIs e padrões existentes.
5. Adicione testes proporcionais ao risco.
6. Valide os módulos e fluxos afetados.

Não crie automaticamente UseCase, Repository, interface, DataSource, Mapper ou novo módulo. Cada
elemento precisa de responsabilidade concreta.

## Referências

- Leia [validação Android](references/validation.md) antes de escolher comandos Gradle.
- Para detalhes de uma área, use a skill especializada disponível no pacote e carregue somente as
  referências relevantes à mudança.
