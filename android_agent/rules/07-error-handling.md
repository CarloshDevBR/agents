# Error Handling

Nunca ignore exceções silenciosamente.

Evite:

```kotlin
try {
    repository.login()
} catch (e: Exception) {
}
```

Erros devem ser:

- tratados;
- convertidos;
- propagados;
- ou registrados de maneira apropriada.

Converta erros de infraestrutura para algo compreensível pelas camadas superiores quando necessário.

Exemplo:

```kotlin
sealed interface LoginResult {

    data object Success : LoginResult

    data class Error(
        val message: String
    ) : LoginResult
}
```

Não exponha detalhes internos de infraestrutura diretamente para a UI quando isso criar acoplamento desnecessário.
