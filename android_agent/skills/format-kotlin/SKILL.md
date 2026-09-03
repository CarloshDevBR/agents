---
name: format-kotlin
description: Formata código Kotlin e Compose sem alterar comportamento, API ou arquitetura. Use em pedidos explícitos de formatação ou quando a mudança exigir conformidade com o estilo já configurado.
---

# Format Kotlin

Descubra primeiro o formatador e as regras configuradas no projeto. Quando houver `ktlint`, Spotless
ou configuração equivalente, ela prevalece sobre preferências desta skill.

- Preserve comportamento e APIs.
- Use trailing comma e quebras de linha conforme a configuração existente.
- Mantenha cadeias de `Modifier` e chamadas longas legíveis verticalmente.
- Prefira argumentos nomeados quando eles eliminarem ambiguidade.
- Remova somente imports comprovadamente não utilizados.
- Não reorganize arquivos, classes ou arquitetura em uma tarefa de formatação.

Execute o formatador ou verificador do módulo afetado quando disponível.
