# Jetpack Compose

Prefira Composables stateless sempre que possível.

Exemplo:

```kotlin
@Composable
fun LoginContent(
    state: LoginUiState,
    onEvent: (LoginUiEvent) -> Unit
)
```

## Responsabilidades

Não coloque regras de negócio dentro de Composables.

A UI deve:

- renderizar estado;
- enviar eventos;
- lidar com comportamento exclusivamente visual.

## ViewModel

Somente componentes no nível da tela devem conhecer o ViewModel.

Exemplo:

```kotlin
@Composable
fun LoginScreen(
    viewModel: LoginViewModel
) {
    val state by viewModel.uiState.collectAsStateWithLifecycle()

    LoginContent(
        state = state,
        onEvent = viewModel::onEvent
    )
}
```

Não passe ViewModel para componentes filhos.

Prefira:

```kotlin
@Composable
fun EmailField(
    value: String,
    onValueChange: (String) -> Unit
)
```

em vez de:

```kotlin
@Composable
fun EmailField(
    viewModel: LoginViewModel
)
```

Pratique state hoisting sempre que fizer sentido.
