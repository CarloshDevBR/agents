---
name: code-formatting
description: Formata código Kotlin e Jetpack Compose sem alterar comportamento ou arquitetura. Use em pedidos de formatação, legibilidade ou padronização de estilo.
---

# Kotlin & Compose Code Formatting

## Objetivo

Gerar código Kotlin/Compose com formatação limpa, consistente e fácil de ler.

Não alterar arquitetura, comportamento ou lógica apenas por questões de estilo.

## Regras

### 1. Parâmetros de funções

Quando houver mais de 2 parâmetros, preferir um parâmetro por linha.

```kotlin
@Composable
fun StagesHeader(
    currentStep: Int,
    totalSteps: Int,
    onBackClick: () -> Unit,
) {
```

### 2. `Modifier`

Nunca gerar cadeias longas de `Modifier` na mesma linha.

Cada operação deve ficar em sua própria linha.

```kotlin
modifier = Modifier
    .size(40.dp)
    .shadow(8.dp, CircleShape)
    .clip(CircleShape)
    .background(Color.White)
    .clickable(onClick = onBackClick)
```

### 3. Composables com vários argumentos

Evitar chamadas comprimidas em uma única linha.

```kotlin
Text(
    text = "Etapa $currentStep",
    color = MaterialTheme.colorScheme.onSurface,
    fontSize = 17.sp,
    lineHeight = 21.sp,
    fontWeight = FontWeight.Bold,
    maxLines = 1,
)
```

O mesmo vale para:

```kotlin
Icon(
    imageVector = Icons.AutoMirrored.Outlined.ArrowBack,
    contentDescription = "Voltar",
    modifier = Modifier.size(21.dp),
    tint = MaterialTheme.colorScheme.onSurface,
)
```

### 4. Argumentos nomeados

Em chamadas Compose com múltiplos argumentos, preferir argumentos nomeados.

Evitar:

```kotlin
Icon(icon, "Voltar", Modifier.size(21.dp), color)
```

Preferir:

```kotlin
Icon(
    imageVector = icon,
    contentDescription = "Voltar",
    modifier = Modifier.size(21.dp),
    tint = color,
)
```

### 5. Imports

Importar tipos usados repetidamente em vez de escrever nomes totalmente qualificados no código.

Evitar:

```kotlin
androidx.compose.ui.graphics.Color.White
androidx.compose.foundation.layout.Arrangement.Center
```

Preferir:

```kotlin
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.ui.graphics.Color
```

E usar:

```kotlin
Color.White
Arrangement.Center
```

### 6. Quebra de linha

Priorizar legibilidade em vez de reduzir quantidade de linhas.

Não compactar:

* `Modifier`
* parâmetros de Composables
* configurações de UI
* expressões com `Brush`
* chamadas com vários argumentos

### 7. Trailing comma

Utilizar trailing comma em parâmetros e argumentos multilinha.

```kotlin
Column(
    modifier = Modifier.fillMaxWidth(),
    horizontalAlignment = Alignment.CenterHorizontally,
    verticalArrangement = Arrangement.Center,
)
```

## Regra principal

> Código Kotlin/Compose deve parecer formatado por um desenvolvedor humano, não minimizado para ocupar menos linhas.

Ao gerar ou modificar código, priorize **clareza, consistência e leitura vertical**, mantendo o comportamento existente.
