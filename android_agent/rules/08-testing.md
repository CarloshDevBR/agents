# Android Testing

Priorize testes para:

1. regras de negócio;
2. ViewModels;
3. repositories;
4. transformações de dados;
5. fluxos críticos da aplicação.

Prefira testes determinísticos e independentes.

Use fakes quando forem suficientes.

Exemplo:

```kotlin
class FakeAuthRepository : AuthRepository {

    override suspend fun login(
        email: String,
        password: String
    ): Result<User> {
        return Result.success(
            User(
                id = "1",
                name = "User"
            )
        )
    }
}
```

Evite mocks complexos quando um fake simples resolver.

Não teste detalhes internos de implementação sem necessidade.

Teste comportamento observável.
