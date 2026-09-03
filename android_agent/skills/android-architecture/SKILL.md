---
name: android-architecture
description: Analisa ou modifica limites arquiteturais, módulos e dependências em projetos Android Kotlin. Use para decisões estruturais; não use para uma alteração isolada que preserve claramente a arquitetura existente.
---

# Android Architecture

Antes de propor estrutura, identifique módulos, source sets, fluxos de dependência e convenções
existentes. Não suponha nomes de pacotes, Clean Architecture ou uma separação fixa em camadas.

## Critérios

- Separe UI, lógica de apresentação, regras de negócio e infraestrutura quando isso criar um limite útil.
- Mantenha rede, banco, arquivos e preferências fora da UI.
- Prefira dependências explícitas e injeção por construtor.
- Crie interface, UseCase, DataSource ou Mapper somente quando houver responsabilidade própria,
  implementações distintas, limite entre módulos ou ganho relevante de testabilidade.
- Evite objetos que apenas repassem chamadas.
- Preserve frameworks de DI, persistência e navegação já adotados quando forem adequados.

Para avaliar alternativas, priorize corretude, coesão, direção das dependências, testabilidade e
simplicidade. Explique somente os trade-offs que afetam o projeto.
