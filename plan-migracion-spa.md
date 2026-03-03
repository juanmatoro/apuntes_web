# Plan de migración a SPA

## Objetivo
Pasar de la estructura actual a una SPA mantenible, con rutas claras, páginas desacopladas, componentes reutilizables y un sistema de menús centralizado.

## Fase 1. Auditoría y congelación (1 día)
- Inventariar páginas actuales (`tema*.html`, `*-ejemplos.html`) y enlaces.
- Detectar duplicación de bloques, scripts y estilos.
- Definir mapa de rutas objetivo.
- Entregable: `docs/spa-migration-map.md` con rutas y equivalencias.

## Fase 2. Esqueleto SPA base (1 día)
- Crear estructura de proyecto SPA (recomendado: Vite).
- Estructura mínima:
  - `src/app/`
  - `src/router/`
  - `src/layouts/`
  - `src/pages/`
  - `src/components/`
  - `src/features/`
  - `src/services/`
  - `src/styles/`
- Entregable: app arrancando con layout base y home.

## Fase 3. Router y layout principal (1 día)
- Centralizar rutas en `routes.ts`.
- Implementar layout principal: `Header`, `SidebarMenu`, `Main`, `Breadcrumb`.
- Añadir `404` y redirecciones de rutas antiguas.
- Entregable: navegación SPA funcional en rutas iniciales.

## Fase 4. Menús bien estructurados (1-2 días)
- Definir `menu.config.ts` como única fuente de verdad.
- Renderizar menú por configuración (sin hardcode de enlaces en HTML).
- Soportar estado activo, secciones colapsables y responsive móvil.
- Entregable: menú único reutilizable para toda la app.

## Fase 5. Migración de páginas por lotes (3-5 días)
- Migrar contenido tema por tema con plantilla común.
- Crear `TopicPage` para eliminar duplicación.
- Reescribir enlaces internos a rutas SPA.
- Entregable: 100% de temas navegables desde SPA.

## Fase 6. Componentización real (2 días)
- Extraer bloques repetidos en componentes:
  - `CodeBlock`
  - `ExampleCard`
  - `Callout`
  - `TopicIndex`
  - `PrevNextNav`
- Organizar estilos por componente y tokens CSS.
- Entregable: reducción visible de duplicación y mejor mantenibilidad.

## Fase 7. Datos desacoplados (2 días)
- Separar contenido de la UI (JSON/Markdown).
- Crear `contentService.ts` para cargar temas y ejemplos.
- Entregable: alta de nuevos temas sin tocar router o menú manualmente.

## Fase 8. Calidad y hardening (1-2 días)
- Configurar ESLint + Prettier.
- Añadir tests mínimos:
  - rutas válidas/404
  - menú activo
  - componentes críticos
- Revisar rendimiento y accesibilidad (Lighthouse).
- Entregable: build, lint y tests en verde.

## Fase 9. Transición y limpieza (1 día)
- Mantener temporalmente `index-mpa.html` con redirección.
- Eliminar restos legacy al cerrar migración.
- Entregable: SPA única y estable en producción.

## Definición de terminado (DoD)
- Una sola entrada SPA.
- Rutas limpias y consistentes.
- Menú dinámico desde configuración.
- Páginas desacopladas y componentes reutilizables.
- Cero enlaces rotos.
- Lint/test/build en verde.

## Orden recomendado de ejecución
1. Fase 1
2. Fase 2
3. Fase 3
4. Fase 4
5. Fase 5
6. Fase 6
7. Fase 7
8. Fase 8
9. Fase 9
