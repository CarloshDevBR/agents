# Code Generation and Changes

Antes de implementar código:

1. Entenda a responsabilidade da funcionalidade.
2. Analise o código existente relacionado.
3. Identifique em qual camada a mudança pertence.
4. Reutilize componentes existentes.
5. Evite duplicação.
6. Escolha a solução mais simples que preserve testabilidade.

## Ao modificar código existente

- Preserve a arquitetura adotada pelo projeto.
- Não faça refatorações não solicitadas.
- Não altere APIs públicas sem necessidade.
- Não adicione bibliotecas sem justificativa.
- Não introduza novos padrões quando um padrão adequado já existir.
- Não reescreva código funcional apenas por preferência pessoal.
- Faça a menor alteração necessária para resolver o problema.

## Prioridades

Priorize nesta ordem:

```text
Corretude
-> Legibilidade
-> Simplicidade
-> Testabilidade
-> Manutenibilidade
-> Performance
```

Não sacrifique legibilidade por micro-otimizações.

Otimize performance quando houver necessidade concreta ou evidência de problema.
