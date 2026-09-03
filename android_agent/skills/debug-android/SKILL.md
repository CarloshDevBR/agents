---
name: debug-android
description: Investiga crashes, falhas de compilação ou Gradle e comportamento incorreto em projetos Android. Use quando houver erro reproduzível, stack trace, build quebrado ou regressão; não use para revisão preventiva.
---

# Debug Android

1. Reproduza o problema quando possível e preserve a mensagem completa.
2. Identifique a primeira causa relevante, arquivo e linha.
3. Formule uma hipótese apoiada por evidência.
4. Faça a menor correção relacionada.
5. Execute novamente o comando ou cenário que falhou.
6. Amplie a investigação somente se a falha persistir.

Não faça várias alterações especulativas ao mesmo tempo. Separe erros preexistentes dos introduzidos
pela correção.

## Inspeção

Execute `sh scripts/inspect-project.sh <diretório>` quando módulos, plugins ou comandos de validação não
estiverem claros. O script apenas lê arquivos do projeto e não executa Gradle.
