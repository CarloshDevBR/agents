# Estado e efeitos no Compose

- Colete fluxos respeitando o lifecycle do host.
- Use `remember` para estado que pode ser perdido com recriação e `rememberSaveable` somente para
  estado pequeno que precisa sobreviver à recriação.
- Use efeitos apenas para sincronização com algo externo à composição.
- Escolha keys de `LaunchedEffect` e `DisposableEffect` que representem exatamente quando o efeito deve reiniciar.
- Não use efeitos para derivar valores que podem ser calculados durante composição.
- Diferencie estado durável de eventos transitórios. Não modele eventos consumíveis como estado
  permanente sem uma estratégia explícita.
- Evite gravar estado durante composição e evite capturar callbacks obsoletos em efeitos longos.
