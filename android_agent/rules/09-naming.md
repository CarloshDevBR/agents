# Naming

Use nomes que expressem intenção.

Prefira:

```kotlin
loadUser()
authenticateUser()
saveOrder()
isUserLoggedIn
```

Evite nomes genéricos como:

```kotlin
doStuff()
execute2()
processData()
manager()
helper()
utils()
```

quando existir um nome mais específico.

## Classes

O nome deve revelar a responsabilidade.

Prefira:

```text
AuthRepository
LoginViewModel
UserLocalDataSource
OrderRepository
```

Evite sufixos vagos sem significado arquitetural claro.
