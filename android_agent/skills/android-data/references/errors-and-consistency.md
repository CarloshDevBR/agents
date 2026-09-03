# Erros e consistência de dados

- Preserve a estratégia existente: exceções, `Result` ou tipos próprios não são padrões universais.
- Propague `CancellationException` em funções suspensas.
- Converta erros de infraestrutura para tipos estáveis quando as camadas superiores não devam conhecer a implementação.
- Defina claramente a fonte de verdade quando houver cache e rede.
- Para escritas múltiplas, determine atomicidade, rollback e comportamento após falha parcial.
- Em banco, trate migrations como mudança de dados verificável; não use fallback destrutivo sem autorização explícita.
- Diferencie ausência válida de dado, falha de leitura e dado desatualizado.
