---
name: architecture
description: Analisa e orienta decisões arquiteturais em projetos Android Kotlin, preservando a estrutura existente e evitando abstrações sem benefício concreto.
---

# Android Architecture

Use esta skill para decisões de arquitetura, organização de responsabilidades ou dependências
entre camadas e módulos Android.

## Primeiro, descubra o projeto

Antes de propor uma estrutura:

1. identifique módulos, source sets e limites de responsabilidade existentes;
2. examine features semelhantes e as convenções adotadas;
3. confirme as bibliotecas usadas para UI, estado, persistência, rede e injeção;
4. preserve decisões existentes quando forem adequadas.

Não suponha nomes de pacotes, módulos, classes, rotas ou uma arquitetura específica.

## Responsabilidades

Mantenha estas separações fundamentais:

- UI renderiza estado, recebe interação e delega ações;
- lógica de apresentação coordena o estado da tela;
- acesso a rede, banco, arquivos e preferências fica fora da UI;
- regras de negócio permanecem independentes de UI e infraestrutura quando essa separação trouxer
  benefício real.

Um fluxo comum é:

```text
UI -> ViewModel -> Repository -> fonte de dados
```

Isso é uma referência, não uma estrutura obrigatória. Adapte-se ao desenho já existente.

## Decisões de abstração

Crie uma camada, interface, UseCase, DataSource ou Mapper somente quando houver benefício concreto,
como isolar uma regra relevante, coordenar operações, permitir implementações distintas, definir um
limite estável entre módulos ou melhorar significativamente a testabilidade.

Evite objetos que apenas repassem uma chamada sem acrescentar responsabilidade.

## Dependências

- prefira dependências explícitas e injeção por construtor;
- mantenha dependências apontando para responsabilidades mais estáveis;
- não permita que UI dependa diretamente de clientes de rede, DAOs ou armazenamento;
- não introduza framework de DI, navegação ou persistência apenas para uniformizar o projeto.

## Resultado esperado

Escolha a menor mudança que mantenha corretude, clareza e testabilidade. Quando houver mais de uma
solução razoável, explique o trade-off que realmente afeta o projeto.
