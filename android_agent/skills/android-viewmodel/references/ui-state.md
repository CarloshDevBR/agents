# Modelagem de estado de UI

- Use uma estrutura imutável quando campos puderem coexistir.
- Use estados mutuamente exclusivos quando flags independentes permitiriam combinações inválidas.
- Não exponha exceções ou detalhes de infraestrutura diretamente à UI.
- Mantenha códigos ou tipos de erro separados do texto localizado.
- Estado representa o que continua verdadeiro; efeitos representam ocorrências pontuais.
- Antes de criar Channel ou SharedFlow para efeitos, verifique se callback, estado ou navegação
  declarativa resolvem o caso sem perda de eventos.
