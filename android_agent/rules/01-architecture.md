# Android Architecture

Organize responsabilidades preferencialmente entre:

- UI
- Data
- Domain, somente quando necessário

Fluxo esperado:

```text
UI -> ViewModel -> Repository -> DataSource
```

Os dados retornam:

```text
DataSource -> Repository -> ViewModel -> UI
```

## UDF

Use Unidirectional Data Flow.

Estado:

```text
ViewModel -> UI
```

Eventos:

```text
UI -> ViewModel
```

## Domain

Não crie uma camada de domínio apenas por convenção.

Use UseCases quando:

- existir lógica de negócio reutilizável;
- houver regras complexas;
- múltiplos ViewModels compartilharem a mesma operação;
- a separação melhorar claramente a testabilidade.

Para operações simples, permita:

```text
ViewModel -> Repository
```
