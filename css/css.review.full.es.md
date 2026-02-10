# CSS

- [CSS](#css)
  - [1. CSS Concepts](#1-css-concepts)
    - [Selectores](#selectores)
      - [Anidamiento de selectores](#anidamiento-de-selectores)
      - [Modificación del alcance (scope) de los selectores](#modificación-del-alcance-scope-de-los-selectores)
    - [La cascada](#la-cascada)
    - [Especificidad](#especificidad)
    - [Herencia](#herencia)
  - [2. CSS Lenguaje y funcionalidad](#2-css-lenguaje-y-funcionalidad)
    - [Pseudo-elements](#pseudo-elements)
    - [Pseudo-classes](#pseudo-classes)
    - [Funciones y propiedades personalizadas (custom properties)](#funciones-y-propiedades-personalizadas-custom-properties)
    - [Color](#color)
      - [Herramientas de Color](#herramientas-de-color)
    - [Unidades de Medida](#unidades-de-medida)
      - [Longitudes relativas](#longitudes-relativas)
    - [Propiedades Lógicas (Logical Properties)](#propiedades-lógicas-logical-properties)
    - [API de CSS](#api-de-css)
  - [3. CSS Layout (maquetación)](#3-css-layout-maquetación)
    - [Box Model (modelo de caja )](#box-model-modelo-de-caja-)
    - [Layout Tools](#layout-tools)
    - [Layout de múltiples columnas (Multi-column layout)](#layout-de-múltiples-columnas-multi-column-layout)
    - [Flexbox (Display flex)](#flexbox-display-flex)
    - [Grid (Display grid)](#grid-display-grid)
      - [SubGrid](#subgrid)
    - [Spacing](#spacing)
    - [Z-index y contextos de apilamiento (stacking contexts)](#z-index-y-contextos-de-apilamiento-stacking-contexts)
  - [4. Interacciones CSS](#4-interacciones-css)
    - [Enfoque o foco (focus)](#enfoque-o-foco-focus)
    - [Desbordamiento (overflow) y desplazamiento (scrolling)](#desbordamiento-overflow-y-desplazamiento-scrolling)
      - [Desplazamiento y desbordamiento](#desplazamiento-y-desbordamiento)
      - [CSS Scroll Snap](#css-scroll-snap)
    - [Otras acciones](#otras-acciones)
  - [5. Elementos de CSS: Texto y escritura](#5-elementos-de-css-texto-y-escritura)
    - [Texto y tipografía](#texto-y-tipografía)
      - [Text-wrap](#text-wrap)
      - [Fuentes y tipografía](#fuentes-y-tipografía)
    - [Listas](#listas)
    - [Modos de escritura CSS](#modos-de-escritura-css)
      - [Flujo del texto](#flujo-del-texto)
  - [6. Elementos de CSS: Formas y Gráficos](#6-elementos-de-css-formas-y-gráficos)
    - [Bordes, formas y enmascaramiento](#bordes-formas-y-enmascaramiento)
      - [Formas (shapes)](#formas-shapes)
      - [Enmascaramiento y recorte](#enmascaramiento-y-recorte)
    - [Sombras (Shadows)](#sombras-shadows)
    - [Fondos (Backgrounds)](#fondos-backgrounds)
    - [Gradientes](#gradientes)
      - [Gradiente cónico: `conic-gradient()`](#gradiente-cónico-conic-gradient)
    - [Filtros](#filtros)
    - [Modos de mezcla (blend modes): mezcla de dos o más capas](#modos-de-mezcla-blend-modes-mezcla-de-dos-o-más-capas)
  - [7. CSS Dinámico](#7-css-dinámico)
    - [Transiciones](#transiciones)
    - [Transformaciones](#transformaciones)
    - [Animaciones](#animaciones)
    - [Scroll-linked animations / View-Linked Animations](#scroll-linked-animations--view-linked-animations)
    - [ViewTransitions API](#viewtransitions-api)
    - [Animación por propiedades discretas](#animación-por-propiedades-discretas)
  - [8. RWD, accessibility \& performance](#8-rwd-accessibility--performance)
    - [RWD](#rwd)
      - [Media Queries](#media-queries)
      - [Container queries](#container-queries)
      - [Responsive Background Images](#responsive-background-images)
    - [Accesibilidad](#accesibilidad)
      - [Accesibilidad en HTML](#accesibilidad-en-html)
    - [Rendimiento (Performance)](#rendimiento-performance)
  - [References](#references)
  - [Adds](#adds)

Y" Hot Feature in State of CSS 2024
Y Hot Feature in State of CSS 2023
~?️ Hot Feature in State of CSS 2022
Y~Z Hot Feature in State of CSS 2021
YO Important adds to the standard previous 2000

## 1. CSS Concepts

### Selectores

- Las partes de una regla de CSS
- Selectores simples
- Pseudo-clases y pseudo-elementos
- Selectores complejos
  - Selectores combinados
  - Selectores compuestos
- Anidamiento y alcance de selectores

#### Anidamiento de selectores

- 2️f0️f2️f3️fYY"¿~?️? Anidamiento de selectores

  ```css
  .parent {
    color: blue;

    .child {
      color: red;
    }
  }
  ```

#### Modificación del alcance (scope) de los selectores

- `@scope`

  > 2️f0️f2️f4️fY" nueva _regla de CSS_ que establece un nuevo ámbito de alcance para los selectores anidados dentro de ella, lo que permite controlar el alcance de los selectores anidados y evitar la repetición de selectores comunes.

  - @scope -> Limita el alcance al contenedor donde se declara. Usado en un \<style\> del HTML.
  - @scope (start) Limita el alcance inicial a partir del cuál se aplican los estilos.
  - @scope (start) to (end) Delimita el alcance inicial y final del cuál se aplican los estilos.

  ```css
  @scope .parent {
    color: blue;

    .child {
      color: red;
    }
  }
  ```

### La cascada

- Posición y orden de aparición
- Especificidad
- Origen
- Importancia
- 2️f0️f2️f2️fY"Y~?️ Capas de cascada: regla @layer

### Especificidad

- Puntuación de especificidad. Puntuación de cada tipo de selector
- Especificidad en contexto. Cálculo
- Aumentar la especificidad pragmáticamente

### Herencia

- Flujo de herencia
- Propiedades heredables (color, fuente, texto...)
- Cómo funciona la herencia: heredar explícitamente y controlar la herencia
  - Palabras clave: `inherit`, `initial`, `unset`

## 2. CSS Lenguaje y funcionalidad

### Pseudo-elements

- `::before` y `::after`
- `::first-letter`
- `::first-line`
- `::backdrop` (para `dialog` o `video`)
- `::marker` (para elementos de lista o `summary`)
- `::selection`
- `::placeholder`
- `::cue` (para `video`)

### Pseudo-classes

- Estados interactivos
  - `:hover`
  - `:active`
  - `:focus`, `:focus-within` y `:focus-visible`
  - `:target`
- Estados históricos
  - `:link`
  - `:visited`
- Estados de formulario
  - `:disabled` y `:enabled` (para botones)
  - `:checked` y `:indeterminate` (para checkboxes o botones de radio)
  - `:placeholder-shown`
  - Estados de validación
    - `:valid`, `:invalid` y `:in-range`
    - `:required` y `:optional`
- Selección de elementos
  - `:nth-child()` y `:nth-of-type()`
    - `:first-child` y `:last-child`
    - `:only-child`
    - `:first-of-type` y `:last-of-type`
    - `:nth-child` y `:nth-of-type`
    - `:only-of-type`
    - 2️f0️f2️f3️fY" `nth-child of S`
      Pre-filter a set of child elements before applying nth-child to it.
- Búsqueda de elementos
  - `:empty`
  - `:not()`
  - `:is()`
  - 2️f0️f2️f2️fY"Y~?️`:where()`
  - 2️f0️f2️f2️fY"Y~?️`:has()`

### Funciones y propiedades personalizadas (custom properties)

- Concepto
- Selectores funcionales: `:is()`, `:not()`
- `attr()` y `url()`
- 2️f0️f2️f2️fY"Y~?️ `image()` (similar a url, añadiendo parámetros propios de la imagen)

- **Propiedades personalizadas** (custom properties)

  > YOY~?️Y~Z _módulo CSS_ que permite la creación de propiedades personalizadas que se pueden usar repetidamente.

  - acceso a propiedades personalizadas: `var()`

- Expresiones matemáticas:

  > Y"Y~?️Y~Z _funciones CSS_ para cálculos y comparaciones matemáticas básicos.

  - `calc(a,b)`
  - `min(a,b)` y `max(a,b)`
  - `clamp(minimum, ideal, maximum)`

  > 2️f0️f2️f2️fY"Y~?️ _funciones CSS_ para operaciones trigonométricas

  - `sin()`, `cos()`, `tan()`, `asin()`, `acos()`, `atan()`, `atan2()`

  > 2️f0️f2️f4️fY" nuevas _funciones CSS_ para mejorar cálculos y comparaciones matemáticas.

  - Funciones de valor escalonado `round()`, `mod()`, `rem()`
  - Funciones relacionadas con el signo `sign()`, `abs()`
  - Funciones exponenciales `pow()`, `sqrt()`, `exp()`, `log()`, `hypot()`

- Funciones específicas
  - Funciones para propiedades de forma _(v.i.)_
    - `circle()`
    - `ellipse()`
    - `inset()`
    - `polygon()`
  - Funciones de color _(v.i.)_
    - `rgb()`
    - `rgba()`
    - `hsl()`
    - `hsla()`
    - `hwb()`
    - `lab()`
    - `lch()`
  - Funciones de transformaciones y animaciones _(v.i.)_
    - `rotate()`, `rotateX()`, `rotateY()`, `rotateZ()`, `rotate3d()`
    - `scale()`, `scaleX()`, `scaleY()`, `scaleZ()`, `scale3d()`
    - `translate()`, `translateX()`, `translateY()`, `translateZ()`, `translate3d()`
    - `skew()`, `skewX()`, `skewY()`
  - Gradientes y filtros _(v.i.)_

### Color

- Colores numéricos:
  - hexadecimal
  - `rgb()`
  - `hsl()` (Hue, Saturation, Lightness)
- Palabras clave de color
- Transparencia: `rgba()`, `hsla()` y `opacity`
- Variaciones de hsl: `hwb()` (Hue, Whiteness, Blackness)

- Colores de Gama Amplia (Wide Gamut): `lab()` y `lch()`, `oklab()` y `oklch()`

  > 2️f0️f2️f3️fY"Y¿~?️? nuevas _funciones de color CSS_ que permiten especificar un color en un espacio de color particular, en lugar del espacio de color sRGB implícito en el que operan la mayoría de las otras funciones de color.

  - `lab()`: CIE L\*a\*b\* color space
  - `lch()`: CIE L\*C\*h color space
  - `oklab()`: CIE L\*a\*b\* color space
  - `oklch()`: CIE L\*C\*h color space

- Dónde usar el color en las reglas CSS
- Sintaxis de color relativa

  > 2️f0️f2️f4️fY" nueva _sintaxis en CSS_ que permite definir un color en relación con otro color usando la palabra clave `from` y opcionalmente `calc()` para cualquiera de los valores de color.

  ```css
  .foo {
    --color: #4488dd;
    background-color: hsl(from var(--color) h s calc(l * 1.2));
  }
  ```

#### Herramientas de Color

- `color()`

  > 2️f0️f2️f1️fY"Y~?️Y~Z nueva _notación funcional_ que permite especificar un color en un espacio de color particular, en lugar del espacio de color sRGB implícito en el que operan la mayoría de las otras funciones de color.

  ```css
  .brightest-green {
    background: color(display-p3 0 1 0);
  }
  ```

- `accent-color`

  > 2️f0️f2️f1️fY"Y~?️Y~Z nueva _propiedad CSS_ que establece el color de acento para los controles de la interfaz de usuario generados por algunos elementos.

  ```css
  input[type="checkbox"] {
    accent-color: tomato;
  }
  ```

  - `color-mix`
    > 2️f0️f2️f2️fY"Y~?️ nueva _función de CSS_ que permite mezclar dos colores en un espacio de color específico, con un factor de mezcla opcional.

  ```css
  .teal {
    background: color-mix(in lab, white 20%, #34c9eb);
  }
  ```

- `color-gamut`
  > 2️f0️f2️f0️fY~Z _característica de medios CSS_ que se puede usar para probar el rango aproximado de colores que son compatibles con el agente de usuario y el dispositivo de salida.

### Unidades de Medida

- Números (`opacity`, `line-height`, `rgb/a()`)
- Porcentajes (`width`, `height`, `margin`, `padding`...)
- Dimensiones y longitudes
  - Longitudes absolutas
  - Longitudes relativas
  - Unidades de ángulo
  - Unidades de resolución

#### Longitudes relativas

- Unidades relativas al tamaño de fuente (se utilizan `em` y `rem`)

  - `em` / `rem` -> Relativo al font-size en ese elemento
  - `ex` / `rex` -> Relativo a la altura del carácter x minúscula
  - `ch` / `rch` -> Relativo al ancho del carácter 0
  - `cap` / `rcap` -> Relativo a la altura del primer carácter en mayúscula
  - `ic` / `ric` -> Relativo al ancho del glifo 水 CJK (Chino-Japones-Koreano)
  - `lh` / `rlh` -> Relativo al line-height en ese elemento

- Unidades relativas al viewport

  - `vw` -> viewport width 1vw = 1% del ancho del navegador
  - `vh` -> viewport height 1vh = 1% del alto del navegador
  - `vmin` -> viewport minimum 1vmin = 1% del alto o ancho (el mínimo)
  - ´ -> viewport maximum 1vmax = 1% del alto o ancho (el máximo)

- Unidades para propiedades lógicas

  - `vi` -> viewport inline Versión lógica inline de vw y/o vh (depende de la dirección de escritura)
  - `vb` -> viewport block Versión lógica en bloque de vw y/o vh (depende de la dirección de escritura)

- 2️f0️f2️f2️fY"Y~?️ Unidades de viewport variables: distinguen tres formas de medir el viewport: largue (todo), small (sin la barra de direcciones) y dynamic (cambia con el scroll)

  - `svw` / `lvw` / `dvw` -> viewport width Relativo al ancho del navegador
  - `svh` / `lvh` / `dvh` -> viewport height Relativo al alto del navegador
  - `svmin` / `lvmin` / `dvmin` -> viewport minimum Relativo al valor más pequeño entre el alto y el ancho.
  - `svmax` / `lvmax` / `dvmax` -> viewport maximum Relativo al valor más grande entre el alto y el ancho.
  - `svi` / `lvi` / `dvi` -> viewport inline Versión lógica inline de *vw y/o *vh Ver propiedades lógicas
  - `svb` / `lvb` / `dvb` -> viewport block Versión lógica en bloque de *vw y/o *vh Ver propiedades lógicas

### Propiedades Lógicas (Logical Properties)

> YOY"Y~?️Y~Z _Propiedades CSS_ que proporcionan la capacidad de controlar el diseño a través de mapeos lógicos, en lugar de físicos, de dirección y dimensión. stil en relación con los nuevos Modos de Escritura.

- Terminología

  - Flujo de bloque (block flow): `margin-block`, `padding-block`, `border-block`
  - Flujo en línea (inline flow): `margin-inline`, `padding-inline`, `border-inline`
  - Flujo relativo `start` / `end`

  ```css
  section {
    margin-inline-start: 1em;
    margin-inline-end: 1em;
    border-block: 8px solid blue;
    border-inline: 8px solid green;
  }
  ```

- Tamaño `max-inline-size` (`max-width`) / `max-block-size` (`max-height`)
- Alineación de texto `start` / `end`
- Espaciado y posicionamiento (`inset`)
- Bordes
- Unidades (`vi`, `vb`)

### API de CSS

- Houdini Paint API

  > 2️f0️f2️f0️fY~Z nueva API de CSS

- Houdini Propiedades Personalizadas (@property)

  > 2️f0️f2️f1️fY"Y~?️Y~Z nueva _regla @property de CSS_ es parte del conjunto de APIs de CSS Houdini, permite a los desarrolladores definir explícitamente sus propiedades personalizadas de CSS, permitiendo la verificación de tipos de propiedades, establecer valores predeterminados y definir si una propiedad puede heredar valores o no.

  ```css
  @property --property-name {
    syntax: "<color>";
    inherits: false;
    initial-value: #06654c;
  }
  ```

## 3. CSS Layout (maquetación)

### Box Model (modelo de caja )

- Contenido y tamaño. Tamaño extrínseco vs. tamaño intrínseco

  - YOY"Y~?️Y~Z Propiedades de tamaño intrínseco

    - `min-content`
    - `max-content`

    > _sizing keyword_ para el tamaño intrínseco que representa el ancho mínimo o máximo intrínseco del contenido.
    > Para contenido de texto, min-content significa que el contenido tomará todas las oportunidades de ajuste suave, volviéndose tan pequeño como la palabra más larga.

    - min-content: El tamaño del elemento debe ser el mínimo posible para mostrar su contenido.
    - max-content El tamaño del elemento debe ser el máximo posible para mostrar su contenido.
    - fit-content(size), aun en modo experimental, indica que el tamaño debe ser el mínimo posible, sin superar el tamaño de size

    ```css
    h2 {
      width: max-content;
    }
    ```

- Las áreas del modelo de caja
  - `content`
  - `padding`
  - `border`
  - `margin`
  - Otros elementos que no ocupan espacio
    - `outline`: línea fuera del borde del elemento
    - `box-shadow`: también fuera del borde
- Depuración (debugging) del modelo de caja
- Control del modelo de caja: `box-sizing`
- Dimensiones de la caja

  - `width` / `height`
  - `aspect-ratio`

    > 2️f0️f2️f0️fY"Y~?️Y~Z nueva _propiedad CSS_ que establece una relación de aspecto preferida para la caja, que se utilizará en el cálculo de tamaños automáticos y algunas otras funciones de diseño. Ej. uso con iFrames

    ```css
    .container {
      aspect-ratio: 16 / 9;
    }
    ```

  - `object-fit`

    > Y~Z _propiedad CSS_ que establece cómo el contenido de un elemento reemplazado, como una \<img> o un \<video>, debe redimensionarse para ajustarse a su contenedor.
    > Los valores soportados que respetan la relación de aspecto son `contain` (mostrar todo), `cover` (mostrar lo más grande posible) y `scale-down`.

  - `object-position`

    > _propiedad CSS_ que establece la alineación del elemento reemplazado dentro de su caja.

- Reglas de ruptura (break rules): `break-before`\*\*
  > 2️f0️f2️f1️fY~Z nueva _propiedad CSS_ que establece cómo deben comportarse las rupturas de página, columna o región antes de una caja generada (generated box). Si no hay una caja generada, se ignora la propiedad.

### Layout Tools

- Layout (Disposición): una breve historia
- Entendiendo la propiedad `display`
- Flow layout (Diseño de flujo)
  - `block` / `inline` / `inline-block`
  - floats: `float` / `clear`
- **FlexBox** y **Grid**
- Layout de **múltiples columnas**
- Posicionamiento _(v.i.)_

### Layout de múltiples columnas (Multi-column layout)

> YOY~Z _módulo de CSS_ que agrega soporte para layouts de múltiples columnas.
> El soporte incluye establecer el número de columnas en un layout, así como cómo debe fluir el contenido de columna en columna, los tamaños de los espacios entre columnas y las líneas divisorias de columnas, conocidas como reglas de columna (column rules), junto con su apariencia.

### Flexbox (Display flex)

> YOY~Z _módulo de CSS_ que define un modelo de caja CSS optimizado para el diseño de interfaces de usuario y la disposición de elementos en una dimensión.
> En el modelo de flex layout, los hijos de un contenedor flex pueden disponerse en cualquier dirección y pueden "flexionar" sus tamaños, ya sea creciendo para llenar el espacio no utilizado o encogiéndose para evitar desbordar el contenedor principal.
> Tanto la alineación horizontal como la vertical de los hijos pueden manipularse fácilmente.

- ¿Qué puedes hacer con un diseño flex?
- El eje principal (main axis) y el eje transversal (cross axis)
- Contenedor flex
- Controlar la dirección de los elementos
- Envolver elementos flex
- Controlar el espacio dentro de los elementos flex
  > 2️f0️f2️f1️fY~?️Y~Z **Gap** nueva _propiedad CSS_ que establece los espacios (gutter) entre filas y columnas.
  > Es una abreviatura para `row-gap` y `column-gap`.
- Reordenar elementos flex
- Alineación FlexBox
  - Distribuir espacio en el eje principal
  - Distribuir espacio entre líneas flex
  - Alinear elementos en el eje transversal
  - Flex y auto-márgenes
  - Cómo centrar un elemento vertical y horizontalmente

### Grid (Display grid)

> YOY~Z _módulo de CSS_ que sobresale en dividir una página en regiones principales o definir la relación en términos de tamaño, posición y capa, entre partes de un control construido a partir de primitivas HTML.

- Descripción general y terminología de Grid
- Filas y columnas
  - Palabras clave de tamaño intrínseco
  - La unidad `fr`
  - La función `minmax()`
  - Notación `repeat()`
  - `auto-fill` y `auto-fit`
- Auto-placement
- Colocación de elementos
- Líneas de grid nombradas
- Grid Template Areas
- Alineación

#### SubGrid

> YOY"Y~?️Y~Z _valor_ incluido en el Nivel 2 de la especificación de CSS Grid Layout para `grid-template-columns` y `grid-template-rows`.

```css
.wrapper {
  display: grid;
  grid-template-columns: 1fr 1fr;
}

.item {
  grid-row: 1 / 4;
  display: grid;
  grid-template-rows: subgrid;
}
```

### Spacing

- Espaciado en HTML (`br`, `hr`)
- Margen (`margin`)
  - Margen automático
  - Margen negativo
  - Colapso de márgenes
- Aire o Padding (`padding`)
- Espaciado en Grid y Flexbox
- Posicionamiento
  - relativo
  - absoluto
  - fijo
  - sticky
    > 2️f0️f2️f0️fY~Z **sticky**: nuevo _valor_ para la propiedad CSS `position`
  - anchor
    > 2️f0️f2️f3️fY"Y **anchor**: nuevo _valor_ para la propiedad CSS `position`
- Creación de espaciado consistente

### Z-index y contextos de apilamiento (stacking contexts)

- `z-index`, posición y diseños de flexbox o grid
- `z-index` negativo
- Contexto de apilamiento y capa compuesta (composite layer)

## 4. Interacciones CSS

### Enfoque o foco (focus)

- Importancia. Cómo los elementos obtienen el enfoque
  - Atributo HTML `tabindex`
- Estilizar el enfoque. Pseudo-clases
  - Contorno (`outline`)

### Desbordamiento (overflow) y desplazamiento (scrolling)

- Desbordamiento de una sola línea con `text-overflow`
- Uso de propiedades de desbordamiento
  - Desplazamiento en el eje vertical y horizontal (`overflow-x`, `overflow-y`)
  - Propiedades lógicas para la dirección del desplazamiento (`overflow-inline`, `overflow-block`)
  - Abreviatura `overflow`
- Desplazamiento y desbordamiento

#### Desplazamiento y desbordamiento

- Posicionamiento de la barra de desplazamiento dentro del modelo de caja

- `root-scroller` vs `implicit-scroller`

- `scroll-behavior`

  > Y"Y~?️Y~Z _propiedad de CSS_ que establece si el desplazamiento se debe animar, y cómo, cuando se desplaza a un punto dentro de un contenedor de desplazamiento.

  ```css
  .foo {
    scroll-behavior: auto;
    scroll-behavior: smooth;
  }
  ```

- `overscroll-behavior` (modales)

  > Y"Y~?️Y~Z _propiedad CSS_ que establece lo que hace un navegador al alcanzar el límite de un área de desplazamiento. Es una abreviatura para `overscroll-behavior-x` y `overscroll-behavior-y`.

  ```css
  .foo {
    height: 200px;
    overflow: auto;
    overscroll-behavior-y: contain;
  }
  ```

- `overflow-anchor`

  > Y~Z _propiedad CSS_ que proporciona una forma de optar por no participar en el comportamiento de anclaje de desplazamiento del navegador, que ajusta la posición de desplazamiento para minimizar los cambios de contenido.
  > Cambiar el valor de esta propiedad generalmente solo es necesario si experimentas problemas.

- `scrollbar-gutter`

  > 2️f0️f2️f2️fY"Y~?️ nueva _propiedad CSS_ que permite a los autores reservar espacio para la barra de desplazamiento, evitando cambios no deseados en el diseño a medida que el contenido crece y también evitando elementos visuales innecesarios cuando no se necesita desplazamiento.

  ```css
  .container {
    scrollbar-gutter: stable;
  }
  ```

#### CSS Scroll Snap

> Y"Y~?️Y~Z _módulo de CSS_ que introduce posiciones de ajuste de desplazamiento, que imponen las posiciones de desplazamiento en las que puede terminar el puerto de desplazamiento de un contenedor de desplazamiento después de que se haya completado una operación de desplazamiento.
> Las posiciones de ajuste de desplazamiento se pueden usar para implementar desplazamiento paginado, desplazamiento de carrusel y otras interacciones de desplazamiento basadas en posiciones.
> Incluye las propiedades `scroll-snap-type`, `scroll-snap-align`, `scroll-snap-stop`, `scroll-snap-margin`, `scroll-padding`, `scroll-padding-block`, `scroll-padding-inline`.

```css
.scroller {
  height: 300px;
  overflow-y: scroll;
  scroll-snap-type: y mandatory;
}

.scroller section {
  scroll-snap-align: start;
}
```

### Otras acciones

- `touch-action`
  > 2️f0️f2️f0️fY~?️Y~Z _propiedad CSS_ que establece cómo se puede manipular la región de un elemento por un usuario de pantalla táctil (por ejemplo, mediante funciones de zoom integradas en el navegador).
- `pointer-events`
  > 2️f0️f2️f0️fY~Z _propiedad CSS_ que establece en qué circunstancias (si las hay) un elemento gráfico en particular puede convertirse en el objetivo de eventos de puntero.

## 5. Elementos de CSS: Texto y escritura

### Texto y tipografía

- Opciones de texto

  - Tipo de letra: `font-family`
  - Fuentes en cursiva y oblicuas: `font-style`
  - Texto en negrita: `font-weight`
  - Tamaño del texto: `font-size`
  - Espacio entre líneas: `line-height`
  - Espacio entre caracteres: `letter-spacing`
  - Espacio entre palabras: `word-spacing`
  - Mayúsculas y minúsculas del texto: `text-transform`
  - Subrayados (underlines), líneas superiores (over-lines) e intermedias (through-lines): `text-decoration`
  - Sangría del texto (Indent text): `text-indent`
  - Contenido desbordante (Overflowing) u oculto: `text-overflow`
  - Controlar el espacio en blanco: `white-space`
  - Controlar la ruptura de palabras: `word-break`
  - Alineación del texto: `text-align` (Usar propiedades lógicas)
  - Añadir una sombra al texto: `text-shadow`

#### Text-wrap

- `text-wrap`

  > 2️f0️f2️f3️fY nueva _propiedad CSS_ que controla cómo se debe distribuir el texto en un contenedor de bloque cuando el texto supera el ancho del contenedor.
  > Los valores de la propiedad son `wrap`, `nowrap`, `balance`, `pretty`, `stable`.

  ```css
  .balanced {
    max-inline-size: 50ch;
    text-wrap: balance;
  }
  ```

  2️f0️f2️f4️fY" _valor de la propiedad_: `pretty`

  ```css
  .pretty {
    text-wrap: pretty;
  }
  ```

#### Fuentes y tipografía

- `font-variant`

  > Y~Z _propiedad abreviada de CSS_ que permite establecer todas las variantes de fuente para una fuente
  > (`font-variant-alternates`, `font-variant-caps`, `font-variant-east-asian`, `font-variant-ligatures`, `font-variant-numeric`).
  > 2️f0️f2️f0️f Y~Z La propiedad `font-variant-numeric` de CSS controla el uso de glifos alternativos para números, fracciones y marcadores ordinales.

- Pseudo-elementos

  - `::first-letter` & `::first-line`
  - `::selection`
  - `initial-letter`
    > 2️f0️f2️f4️fY"¿Y~Z? nueva _propiedad CSS_ que establece el estilo para letras iniciales caídas, elevadas y hundidas.

- `font-display`

  > 2️f0️f2️f0️fY"Y~?️Y~Z nuevo _descriptor_ que determina cómo se muestra una fuente en función de si y cuándo se descarga y está lista para usar

- `-webkit-line-clamp`

  > 2️f0️f2️f0️fY"Y~?️ _propiedad CSS_ que permite limitar el contenido de un contenedor de bloque al número especificado de líneas.

- **Fuentes variables** (diferentes variantes de un tipo de letra en un solo archivo)
  > 2️f0️f2️f1️fY"Y~?️Y~Z nueva evolución de la _especificación de fuentes OpenType_ que permite incorporar muchas variaciones diferentes de un tipo de letra en un solo archivo, en lugar de tener un archivo de fuente separado para cada ancho, peso o estilo.
  > Permiten acceder a todas las variaciones contenidas en un archivo de fuente dado a través de CSS y una sola referencia @font-face.

### Listas

- Crear una lista
- Estilos de lista
  - `list-style-position`
  - `list-style-image`
  - `list-style-type`
- `::marker`
  > 2️f0️f2️f1️fY~?️Y~Z nuevo _pseudo-elemento_ que selecciona el cuadro de marcador de un elemento de lista, que generalmente contiene una viñeta o número.
  > Funciona en cualquier elemento o pseudo-elemento configurado para display: list-item, como los elementos \<li> y \<summary>.
  - Cuadro de marcador (Marker box)
  - Estilos de marcador (Marker styles)
- Tipo de visualización: `display: list-item`

### Modos de escritura CSS

> YOY"Y~?️Y~Z _Modos de escritura CSS_ es un nuevo _módulo CSS_ que define varios modos de escritura internacionales, como

- left-to-right (por ejemplo, utilizado por escrituras latinas e índicas),
- right-to-left (por ejemplo, utilizado por escrituras hebreas o árabes),
- bidireccional (utilizado al mezclar escrituras de izquierda a derecha y de derecha a izquierda)
- vertical (por ejemplo, utilizado por algunas escrituras asiáticas).

Properties

- `writing-mode` - Flujo del texto (horizontal/vertical):
- `direction` - Dirección del texto (derecha/izquierda): `ltr`, `rtl`
- `text-orientation`: Orientación del texto (para cambiar el modo de escritura)
- `text-combine-upright`
- `unicode-bidi`

#### Flujo del texto

-`writing-mode` (horizontal/vertical):

> _propiedad CSS_ que establece si el texto se debe renderizar horizontal o verticalmente, y si se debe renderizar de izquierda a derecha o de derecha a izquierda.
> Los valores de la propiedad son `horizontal-tb`, `vertical-rl`, `vertical-lr`.

```css
.vertical-text {
  writing-mode: vertical-lr;
}
```

## 6. Elementos de CSS: Formas y Gráficos

### Bordes, formas y enmascaramiento

- Propiedades de borde
- Propiedades lógicas
- Radio de borde (`border-radius`)
- Imágenes de borde
- Formas (shapes)
- Enmascaramiento

#### Formas (shapes)

> YOY~Z _especificación CSS_ 'Shapes' describe formas geométricas para su uso en CSS.
> Para la especificación de Nivel 1, las formas CSS se pueden aplicar a elementos flotantes.
> La especificación define varias formas de definir una forma en un elemento flotante, haciendo que las líneas de envoltura se ajusten alrededor de la forma en lugar de seguir el rectángulo de la caja del elemento.

#### Enmascaramiento y recorte

> YOY~Z _módulo CSS_ que define medios, incluidos el enmascaramiento y el recorte, para ocultar parcial o totalmente partes de elementos visuales.

- Propiedades: `clip-path`, y `shape-outside`
  > `clip-path`: nueva _propiedad CSS_ que crea una región de recorte que establece qué parte de un elemento debe mostrarse.
  > Las partes que están dentro de la región se muestran, mientras que las que están fuera se ocultan.
- Funciones: `circle()`, `ellipse()`, `inset()` y `polygon()`
- Propiedad `offset-path`

  > 2️f0️f2️f4️fY" nueva _propiedad de CSS_

  ```css
  .blueBox {
    background-color: blue;
    offset-path: border-box;
    offset-distance: 5%;
  }
  ```

### Sombras (Shadows)

- Sombra de caja (`box-shadow`)
- Sombra de texto (`text-shadow`)
- Filtro de Sombra de caída (`drop-shadow()`)

### Fondos (Backgrounds)

- Capas de fondo
- Color de fondo
- Imágenes de fondo
  - Fondos de gradiente CSS
  - Imágenes de fondo repetitivas
- Posición de fondo
- Tamaño de fondo
- Fijación (attachment) de fondo
- Origen de fondo
- Recorte (clip) de fondo
- Fondos múltiples

### Gradientes

- Gradiente lineal: `linear-gradient()`
- Gradiente radial: `radial-gradient()`
- Gradiente cónico: `conic-gradient()`
- Repetición y mezcla

#### Gradiente cónico: `conic-gradient()`

> 2️f0️f2️f1️fY"Y~?️Y~Z nueva _función CSS_ que crea una imagen consistente en un gradiente con transiciones de color rotadas alrededor de un punto central (en lugar de irradiar desde el centro).
> Ejemplos de gradientes cónicos incluyen gráficos de tarta (pie charts) y ruedas de color (color wheels).
> El resultado de la función `conic-gradient()` es un objeto del tipo de datos \<gradient>, que es un tipo especial de \<image>.

### Filtros

- La propiedad de **filtro** (`filter`)

  > YOY"Y~?️Y~Z _propiedad CSS_ que aplica efectos gráficos como desenfoque o cambio de color a un elemento.
  > Los filtros se utilizan comúnmente para ajustar la representación de imágenes, fondos y bordes.

  - `blur()`
  - `brightness()`
  - `contrast()`
  - `grayscale()`
  - `invert()`
  - `opacity()`
  - `saturate()`
  - `sepia()`
  - `hue-rotate()`
  - `drop-shadow()`
  - `url()`

  ```css
  .element {
    filter: blur(5px) brightness(0.5) contrast(200%);
  }
  ```

- **Filtro de fondo** (`backdrop-filter`)

  > 2️f0️f2️f0️fY~?️Y~Z _Propiedad CSS_ que permite aplicar efectos gráficos como desenfoque (blurring) o cambio de color al área detrás de un elemento.
  > Debido a que se aplica a todo lo que está detrás del elemento, para ver el efecto debes hacer que el elemento o su fondo sea al menos parcialmente transparente.

  ```css
  .element {
    backdrop-filter: blur(5px);
  }
  ```

### Modos de mezcla (blend modes): mezcla de dos o más capas

- ¿Qué es un modo de mezcla?

  > YOY"Y~?️Y~Z _tipo de dato CSS_ que describe cómo deben aparecer los colores cuando los elementos se superponen.

- Propiedades `mix-blend-mode` y `background-blend-mode`

  ```css
  .element {
    color: #000;
    mix-blend-mode: overlay;
  }
  ```

- Modos de mezcla separables

  - Normal
  - Multiplicar
  - Pantalla
  - Superposición (Overlay)
  - Oscurecer (Darken) y Aclarar (Lighten)
  - Sobreexponer (dodge) color y Subexponer (burn) color
  - Luz fuerte (hard) y Luz suave (soft)
  - Diferencia y Exclusión

- Modos de mezcla no separables

  - Tono (hue), saturación, color y luminosidad

- La propiedad de aislamiento (nuevo contexto de apilamiento)

## 7. CSS Dinámico

### Transiciones

- Propiedades de transición
  - `transition-property`
  - `transition-duration`
  - `transition-timing-function`
  - `transition-delay`
- ¿Qué puede y qué no puede tener transición?
  - Transformaciones
  - Color
  - Sombras
  - Filtros
- Disparadores de transición
  - pseudo-clases
  - cambio de clase desde JS
- Transiciones diferentes para entrada o salida
- Consideraciones de accesibilidad
  - consulta de medios `prefers-reduced-motion`
- Consideraciones de rendimiento

### Transformaciones

- Rotación
  - `rotate()`, `rotateX()`, `rotateY()`, `rotateZ()`, `rotate3d()`
- Escala
  - `scale()`, `scaleX()`, `scaleY()`, `scaleZ()`, `scale3d()`
- Traslación
  - `translate()`, `translateX()`, `translateY()`, `translateZ()`, `translate3d()`
- Sesgo (skew)
  - `skew()`, `skewX()`, `skewY()`
- Perspectiva: propiedad `perspective`
  > Y~Z _Propiedad CSS_ que determina la distancia entre el plano z=0 y el usuario para dar a un elemento posicionado en 3D algo de perspectiva.

### Animaciones

- ¿Qué es un keyframe?. `@keyframes`
- Las propiedades de animación
  - `animation-duration`
  - `animation-timing-function`
  - `animation-iteration-count`
  - `animation-direction`
  - `animation-delay`
  - `animation-play-state`
  - `animation-fill-mode`
- Consideraciones al trabajar con animaciones
  - Media query `prefers-reduced-motion`

### Scroll-linked animations / View-Linked Animations

Una serie de propiedades de CSS permiten definir líneas de tiempo basadas en el desplazamiento de la página o en la vista del usuario, para crear animaciones que se sincronizan con el desplazamiento de la página o la vista del usuario.

- `scroll-timeline`

  > 2️f0️f2️f4️fY"¿Y~Z? nueva _propiedad de CSS_ que permite crear lineas de tiempo 'con nombre' para aplicar animaciones que se sincronizan con el desplazamiento de la página.

  ```css
  .element {
    /* creamos una línea de tiempo en el elemento  eje vertical*/
    scroll-timeline: --color-timeline block;
    /* activamos la línea de tiempo */
    animation-timeline: --color-timeline;
  }
  ```

- `view-timeline`

  > 2️f0️f2️f4️fY" nueva _propiedad de CSS_ que permite crear lineas de tiempo 'con nombre' para animaciones que se sincronizan con la vista del usuario.

  ```css
  @keyframes scroll {
    ...;
  }
  .element {
    view-timeline-name: --image;
    view-timeline-axis: block;

    animation: reveal linear both;
    animation-timeline: --image;
    animation-range: entry 25% cover 60%;
  ```

- `scroll()`, `view()`

  > 2️f0️f2️f4️fY" nuevas _funciones de CSS_ que utilizan una línea de tiempo anónima.
  > En el caso de scroll(), basada en el desplazamiento de scroll.
  > En el caso de view(), basada en la vista del usuario.

  En el caso de la primera, el parámetro root permite referirse a la barra de scroll de la página

  Permite crear animaciones que se sincronizan con la vista del usuario / el scroll de forma más directa que `view-timeline`, asignándole la función a la propiedad `animation-timeline`.

  ```css
  @keyframes reveal {
    ...;
  }

  .element {
    animation: reveal linear both;
    animation-timeline: view();
    animation-range: entry 25% cover 60%;
  }
  ```

### ViewTransitions API

> 2️f0️f2️f3️fY"Y nueva _API de CSS_ que permite a los desarrolladores crear transiciones de vista personalizadas y animaciones de desplazamiento en la web.
> Se puede transicionar root o elementos definidos con un `view-transition-name` compartido en varias páginas, aplicando una transición CSS definido con `@keyframes`.

```css
.any-element {
  view-transition-name: any-name;
}

@keyframes move-out {
  ...;
}
@keyframes move-in {
  ...;
}

@view-transition {
  navigation: auto;
}

::view-transition-old(any-name) {
  animation: 0.4s ease-in both move-out;
}

::view-transition-new(any-name) {
  animation: 0.4s ease-in both move-in;
}
```

### Animación por propiedades discretas

> 2️f0️f2️f4️fY" nueva _API de CSS_ que permite aplicar fácilmente animaciones de entrada y salida para elementos desplegables (dismissible) como diálogos y popovers.

```css
/*   IS-OPEN STATE   */
dialog[open] {
  translate: 0 0;
}

/*   EXIT STATE   */
dialog {
  transition: translate 0.7s ease-out, display 0.7s ease-out allow-discrete;
  translate: 0 100vh;
}

/*   0. BEFORE-OPEN STATE   */
@starting-style {
  dialog[open] {
    translate: 0 100vh;
  }
}
```

## 8. RWD, accessibility & performance

### RWD

- Media Queries
- Container Queries
- Responsive Background Images

#### Media Queries

- Notación tradicional: `@media (max-width: 600px) {...}`
- Notación moderna (con operadores lógicos): `@media (width >= 600px) {...}`
- 2️f0️f2️f2️fY"Y~?️ Notación de rango: `@media (400px < width < 1000px)) {...}`

#### Container queries

- **container size queries**

  > 2️f0️f2️f3️fY"Y¿~?️?¿Y~Z? nueva _regla de CSS_ que permite modificar los estilos dependiendo del tamaño de un contenedor padre (o ancestro) específico.

  ```css
  .container {
    container-name: parent;
    container-type: inline-size;
  }

  @container parent (max-width: 550px) {
    .item {
      background: blue;
    }
  }
  ```

- **container style queries**

  > 2️f0️f2️f4️fY" nueva _regla de CSS_ que permite modificar los estilos dependiendo de las propiedades css de un contenedor padre (o ancestro) específico.

  ```css
  .container {
    container-name: parent;
    container-type: inline-size;
  }

  @container parent (max-width: 500px) and style(--responsive: true) {
    .item {
      background: blue;
    }
  }
  ```

#### Responsive Background Images

- `image-set()`

  > 2️f0️f2️f3️fYY"¿~?️? nueva _función de CSS_ que permite proporcionar para el background una lista de imágenes junto con sus tamaños y densidades, y dejar que el navegador seleccione la imagen más adecuada en función de las condiciones de visualización.

  ```css
  .element {
    background-image: image-set(url("image.jpg") 1x, url("image-big.jpg") 2x);
  }
  ```

### Accesibilidad

- `prefers-reduced-motion`

  > 2️f0️f2️f0️fY"Y~?️Y~Z nueva _característica de medios_ que se utiliza para detectar si el usuario ha solicitado que el sistema minimice la cantidad de movimiento no esencial que utiliza.

  ```css
  @media (prefers-reduced-motion) {
    .animation {
      animation: none;
    }
  }
  ```

- `prefers-color-scheme`

  > 2️f0️f2️f0️fY"Y~?️Y~Z nueva _característica de medios_ que se utiliza para detectar si el usuario ha solicitado un tema de color claro u oscuro.

  ```css
  @media (prefers-color-scheme: dark) {
    .foo {
      background: #333;
      color: white;
    }
  }
  ```

- `prefers-reduced-data`

  > 2️f0️f2️f1️fY"Y~?️Y~Z nueva _característica de medios_ que se utiliza para detectar si el usuario ha solicitado contenido web que consuma menos tráfico de internet.

  ```css
  @media (prefers-reduced-data: reduce) {
    body {
      font-family: system-ui;
    }
  }
  ```

- `color-scheme`

  > 2️f0️f2️f1️fY"Y~?️Y~Z nueva _propiedad CSS_ que permite a un elemento indicar en qué esquemas de color puede renderizado cómodamente.

  ```css
  .html {
    color-scheme: light dark;
  }
  ```

- `prefers-contrast`

  > 2️f0️f2️f2️fY"Y~?️ nueva _característica de medios_ que se utiliza para detectar si el usuario ha solicitado contenido web que cumpla con ciertos niveles de contraste.

  ```css
  @media (prefers-contrast: more) {
    .contrast {
      outline: 2px solid black;
    }
  }
  ```

- `forced-colors`

  > 2️f0️f2️f2️fY"Y~?️ nueva _característica de medios_ que se utiliza para detectar si el usuario ha solicitado contenido web que cumpla con ciertos niveles de color.

  ```css
  @media (forced-colors: active) {
    .button {
      border: 2px green solid;
    }
  }
  ```

- `color-contrast()`

  > 2️f0️f2️f1️fY~?️Y~Z nueva _notación funcional_ que toma un valor de color y lo compara con una lista de otros valores de color, seleccionando el que tenga el mayor contraste de la lista.

- `:focus-visible`

  > 2️f0️f2️f2️fY"Y~?️ nueva _pseudo-clase_ que se aplica a un elemento que recibe el enfoque del teclado, pero solo si el enfoque no se realiza con un mouse u otro dispositivo de puntero.

  ```css
  .focus-visible-only:focus-visible {
    outline: 2px dashed darkorange;
  }
  ```

- `:focus-within`

  > _pseudo-clase_ que se aplica a un elemento que contiene un elemento que recibe el enfoque del teclado.

- `light-dark()`

  > 2️f0️f2️f4️fY" nueva _función de CSS_ que selecciona un valor de una lista de valores basándose en si el usuario ha solicitado un tema de color claro u oscuro.

  ```css
  code {
    color: light-dark(var(--light-code), var(--dark-code));
  }
  ```

#### Accesibilidad en HTML

- Y~Z **tabindex** (HTML)

  - atributo _global de HTML_ que indica que su elemento puede recibir el enfoque y dónde participa en la navegación secuencial del teclado (generalmente con la tecla Tab, de ahí el nombre).

- Y~Z **ARIA HTML**
  - conjunto de _atributos HTML_ que definen formas de hacer que el contenido web y las aplicaciones web (especialmente aquellas desarrolladas con JavaScript) sean más accesibles para personas con discapacidades.

### Rendimiento (Performance)

- Consultas de soporte de características o consulta de características (`@supports`)

  > Y"Y~?️Y~Z _regla CSS_ para especificar declaraciones que dependen del soporte de un navegador para una o más características específicas de CSS.
  > La regla puede colocarse en el nivel superior de tu código o anidarse dentro de cualquier otra regla condicional.

- `content-visibility`

  > 2️f0️f2️f0️fY~?️Y~Z nueva _propiedad CSS_ que permite al agente de usuario omitir el trabajo de renderizado de un elemento, incluyendo el diseño y la pintura, hasta que sea necesario. Mejora el rendimiento.

- `containment`

  > Y~Z _propiedad CSS_ que permite a un autor indicar que un elemento y su contenido son, en la medida de lo posible, independientes del resto del árbol del documento.
  > Esto permite al navegador recalcar el diseño, estilo, pintura, tamaño o cualquier combinación de ellos para un área limitada del DOM y no toda la página, lo que lleva a beneficios obvios de rendimiento.

- `will-change`

  > ~?️Y~Z _propiedad CSS_ que sugiere a los navegadores cómo se espera que cambie un elemento. Los navegadores pueden configurar optimizaciones antes de que un elemento cambie realmente. Este tipo de optimizaciones pueden aumentar la capacidad de respuesta de una página al realizar trabajos potencialmente costosos antes de que realmente se requieran.

## References

- [Learn CSS](https://web.dev/learn/css/) - Fuente principal de los contenidos de este documento. Reagrupados en otro orden y categorías y actualizados con información adicional.

- [State of CSS](https://stateofcss.com/en-US)
  Encuestas sobre el estado de CSS desde 2021 hasta 2024

- [Y"- ~?️Lenguaje CSS](https://lenguajecss.com/css/)
  Colección de artículos de Manz.dev

- [Y"< YODesigning in the Browser](https://www.youtube.com/playlist?list=PLNYkxOF6rcIDI0QtJvW6vKonTxn6azCsD)
  Lista de reproducción de vídeos de Una Kravets (Chrome for Developers) sobre diseño en el navegador

## Adds

- Y~?️ object-view-box
- Y linear()
- Y~?️ font-palette
- Y~?️ shadow-DOM properties


