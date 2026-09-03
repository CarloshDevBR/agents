# Android Development Instructions

Estas instruções orientam mudanças em projetos Android nativos desenvolvidos com Kotlin.

Antes de assumir bibliotecas, arquitetura, módulos ou convenções, inspecione o projeto. Preserve
as decisões existentes quando forem adequadas e aplique as regras abaixo somente ao código ao qual
elas forem relevantes.

## Regras obrigatórias

Antes de criar ou modificar código Android, leia e siga as instruções aplicáveis em:

- `android_agent/rules/00-android-core.md`
- `android_agent/rules/01-architecture.md`
- `android_agent/rules/02-compose.md`
- `android_agent/rules/03-state-viewmodel.md`
- `android_agent/rules/04-coroutines.md`
- `android_agent/rules/05-data-layer.md`
- `android_agent/rules/06-dependency-injection.md`
- `android_agent/rules/07-error-handling.md`
- `android_agent/rules/08-testing.md`
- `android_agent/rules/09-naming.md`
- `android_agent/rules/10-code-generation.md`

Esses arquivos definem os padrões de desenvolvimento deste projeto e devem ser tratados como instruções obrigatórias.

## Skills

Use as skills disponíveis em `android_agent/skills` quando a tarefa corresponder ao workflow descrito pela skill.

Prefira utilizar uma skill existente em vez de improvisar um novo processo.

Cada skill possui seu próprio diretório e um arquivo `SKILL.md`.

## Tecnologias

Kotlin é a linguagem principal. Jetpack Compose, Material 3, ViewModel, Coroutines, Navigation,
injeção de dependências e persistência devem seguir as bibliotecas e versões já adotadas pelo
projeto. Não introduza ou substitua uma tecnologia sem necessidade demonstrável.

## Validação

Após mudanças relevantes:

1. Verifique se o projeto compila.
2. Execute os testes relacionados à mudança.
3. Execute lint quando aplicável.
4. Não finalize uma tarefa deixando erros introduzidos pela alteração.
