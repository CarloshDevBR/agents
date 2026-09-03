# State and ViewModel

Modele o estado da UI com estruturas imutáveis.

Exemplo:

```kotlin
data class LoginUiState(
    val email: String = "",
    val password: String = "",
    val isLoading: Boolean = false,
    val error: String? = null
)
```

Modele ações da interface como eventos quando isso simplificar o fluxo.

```kotlin
sealed interface LoginUiEvent {

    data class EmailChanged(
        val value: String
    ) : LoginUiEvent

    data class PasswordChanged(
        val value: String
    ) : LoginUiEvent

    data object Login : LoginUiEvent
}
```

## ViewModel

Use ViewModel para:

- coordenar o estado da tela;
- reagir a eventos;
- chamar repositories;
- chamar UseCases quando existirem;
- executar lógica de apresentação;
- iniciar operações assíncronas relacionadas à tela.

Prefira:

```kotlin
private val _uiState = MutableStateFlow(LoginUiState())

val uiState = _uiState.asStateFlow()
```

Atualize estado de maneira imutável:

```kotlin
_uiState.update {
    it.copy(email = email)
}
```

Não exponha `MutableStateFlow` publicamente.
