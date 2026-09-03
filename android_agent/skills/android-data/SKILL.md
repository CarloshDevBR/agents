---
name: android-data
description: Implementa ou modifica acesso a dados em Android, incluindo repositories, rede, banco, arquivos e preferências. Use quando a tarefa atravessar uma fonte de dados; não use para lógica exclusivamente visual.
---

# Android Data

Inspecione contratos, modelos, fontes de dados, estratégia de erros e source of truth existentes.
Não suponha Retrofit, Room, DataStore ou outra biblioteca.

## Invariantes

- UI e ViewModel não acessam infraestrutura diretamente.
- Repository oferece operações significativas para seus consumidores e coordena fontes quando necessário.
- Crie contrato separado somente quando houver limite arquitetural, múltiplas implementações ou benefício real para teste.
- Converta modelos apenas quando eles possuírem responsabilidades diferentes.
- Preserve cancelamento em operações suspensas.
- Não registre tokens, credenciais, dados pessoais ou payloads sensíveis.

## Referências

- Leia [erros e consistência](references/errors-and-consistency.md) ao tratar falhas, cache, escrita ou múltiplas fontes.
