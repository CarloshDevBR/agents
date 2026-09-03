# Data Layer

Centralize acesso aos dados na camada de dados.

A UI e o ViewModel não devem acessar diretamente:

- Retrofit;
- Room;
- DataStore;
- Firebase;
- APIs;
- banco de dados;
- filesystem.

Esses acessos devem ser encapsulados por repositories ou data sources.

Exemplo:

```kotlin
interface AuthRepository {

    suspend fun login(
        email: String,
        password: String
    ): Result<User>
}
```

Implementação:

```kotlin
class AuthRepositoryImpl(
    private val api: AuthApi
) : AuthRepository {

    override suspend fun login(
        email: String,
        password: String
    ): Result<User> {
        return try {
            Result.success(api.login(email, password))
        } catch (error: CancellationException) {
            throw error
        } catch (error: Exception) {
            Result.failure(error)
        }
    }
}
```

Em funções suspensas, não converta `CancellationException` em falha de negócio. Preserve o
cancelamento estruturado.

Não adote `Result`, exceções ou um tipo próprio como padrão universal. Preserve a estratégia de
erros existente e mantenha-a consistente entre contrato e implementação.

## Repository

Repositories devem:

- abstrair fontes de dados;
- coordenar dados locais e remotos quando necessário;
- fornecer uma API clara para camadas superiores.

Evite repositories que apenas adicionem abstração sem benefício.
