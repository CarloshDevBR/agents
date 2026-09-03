# Validação Android

Descubra wrapper, módulos, variantes e tasks antes de executar comandos. Prefira a menor validação
que cubra a alteração.

| Alteração | Validação mínima esperada |
|---|---|
| Kotlin isolado | Compilação do módulo e teste relacionado |
| ViewModel ou regra | Testes unitários e compilação do módulo |
| Compose | Compilação, teste afetado e inspeção visual quando possível |
| Dados ou persistência | Testes unitários ou de integração relevantes |
| Navegação | Compilação e fluxos de ida, volta e argumentos |
| Gradle ou manifest | Task de compilação da variante afetada |

Execute lint quando a mudança puder ser verificada por ele ou quando o projeto o exigir. Informe
comandos executados, resultados e qualquer validação que não pôde ser realizada.
