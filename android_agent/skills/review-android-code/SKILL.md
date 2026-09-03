---
name: review-android-code
description: Revisa código Android procurando defeitos funcionais, lifecycle, concorrência, estado, segurança e regressões. Use para code review ou auditoria; não use para implementar mudanças sem solicitação.
---

# Review Android Code

Revise nesta ordem: corretude, lifecycle, concorrência, estado, dados, segurança, arquitetura,
testabilidade, acessibilidade e performance demonstrável.

Para cada achado:

- indique arquivo e linha;
- descreva o cenário concreto que dispara o problema;
- explique impacto e severidade;
- sugira a menor correção adequada.

Não reporte preferência estilística como defeito. Não proponha refatoração ampla sem demonstrar o
risco. Se não houver achados, declare isso e mencione limitações relevantes da análise.
