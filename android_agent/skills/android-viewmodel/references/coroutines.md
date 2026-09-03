# Coroutines em ViewModels

- Use o escopo ligado ao ciclo de vida do ViewModel.
- Não capture `CancellationException` como erro de negócio.
- Cancele ou serialize operações concorrentes quando a anterior deixar de ser relevante.
- Evite respostas fora de ordem atualizando o estado mais novo.
- Use debounce somente quando fizer parte do comportamento esperado.
- Não bloqueie a Main Thread e não use `GlobalScope`, `Thread.sleep` ou `runBlocking` em produção.
- O código que executa trabalho bloqueante deve escolher o contexto adequado.
- Em testes, controle scheduler e dispatcher; não dependa de atrasos reais.
