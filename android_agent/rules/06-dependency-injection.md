# Dependency Injection

Prefira injeção por construtor.

```kotlin
class LoginViewModel(
    private val authRepository: AuthRepository
) : ViewModel()
```

Quando o projeto utilizar Hilt, use Hilt para fornecer dependências.

## Evite

Evite:

- Service Locator;
- dependências globais mutáveis;
- criação manual de dependências dentro de classes que as consomem.

Prefira dependências explícitas.

Uma classe deve receber aquilo de que precisa em vez de localizar ou instanciar suas próprias dependências.
