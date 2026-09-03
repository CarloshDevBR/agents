# Kotlin Coroutines

Para operações assíncronas, prefira:

- suspend functions;
- Flow;
- StateFlow;
- viewModelScope.

No ViewModel:

```kotlin
viewModelScope.launch {
    // operação assíncrona
}
```

## Evite

Não crie `CoroutineScope` manualmente sem necessidade.

Não bloqueie a Main Thread.

Evite em código de produção:

```kotlin
runBlocking
Thread.sleep()
GlobalScope
```

Respeite structured concurrency.

Não troque Dispatcher manualmente sem necessidade.

O código que executa operações bloqueantes deve ser responsável por executá-las no contexto apropriado.
