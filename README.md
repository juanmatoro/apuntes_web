# Apuntes de Desarrollo Web

Repositorio de apuntes prácticos de **HTML, CSS, JavaScript y TypeScript**, organizados por temas y con páginas de **ejemplos** por cada tema.

## Objetivo

Centralizar material de estudio y clase en formato web estático, con navegación consistente entre bloques y una estructura fácil de mantener.

## Estructura del proyecto

```text
.
|- index.html                 # portada general
|- html/                      # apuntes de HTML
|- css/                       # apuntes de CSS
|- js/                        # apuntes de JavaScript
|- ts/                        # apuntes de TypeScript
|- assets/
|  |- css/styles.css          # estilos comunes
|  |- js/components.js        # componentes reutilizables (breadcrumb, nav, etc.)
|- scripts/                   # generadores de páginas de ejemplos
|- patron-de-secciones.md     # patrón base para secciones de contenido
```

## Estado actual

- `HTML`: índice y temas disponibles.
- `CSS`: índice y 12 temas disponibles.
- `JavaScript`: índice y temas **0-7** con sus páginas de ejemplos.
- `TypeScript`: estructura inicial.

### JavaScript (actual)

| # | Archivo tema | Archivo ejemplos | Contenido |
|---|---|---|---|
| 0 | `js/tema0-fundamentos.html` | `js/tema0-fundamentos-ejemplos.html` | Fundamentos y glosario |
| 1 | `js/tema1-intro.html` | `js/tema1-intro-ejemplos.html` | Introducción y entorno |
| 2 | `js/tema2-sintaxis.html` | `js/tema2-sintaxis-ejemplos.html` | Sintaxis y variables |
| 3 | `js/tema3-control.html` | `js/tema3-control-ejemplos.html` | Control de flujo |
| 4 | `js/tema4-funciones.html` | `js/tema4-funciones-ejemplos.html` | Funciones |
| 5 | `js/tema5-arrays.html` | `js/tema5-arrays-ejemplos.html` | Arrays |
| 6 | `js/tema6-objetos.html` | `js/tema6-objetos-ejemplos.html` | Objetos |
| 7 | `js/tema7-dom.html` | `js/tema7-dom-ejemplos.html` | DOM |

## Cómo verlo en local

### Opción rápida

Abre `index.html` directamente en el navegador.

### Opción recomendada (servidor local)

Desde la raíz del proyecto:

```powershell
py -m http.server 5500
```

Luego visita: `http://localhost:5500`

## Scripts útiles

En `scripts/` hay generadores para páginas de ejemplos:

- `scripts/gen-html-examples.ps1`
- `scripts/gen-css-examples.ps1`
- `scripts/gen-js-examples.ps1`

Ejemplo de uso:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/gen-js-examples.ps1
```

## Convenciones de contenido

- Cada tema tiene una página teórica: `temaN-*.html`
- Cada tema puede tener su página de ejemplos: `temaN-*-ejemplos.html`
- Los estilos globales viven en `assets/css/styles.css`
- Los componentes compartidos viven en `assets/js/components.js`

## Próximo foco

Continuar con los apuntes de JavaScript a partir del tema 8 (eventos, formularios, componentes, asincronía), manteniendo el mismo patrón de tema + ejemplos.
