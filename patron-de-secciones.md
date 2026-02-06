# Patrón de Secciones — Copiar y adaptar

## Sección ancho completo con grid 2 columnas

```html
<!-- NOMBRE SECCIÓN -->
<section id="ID_SECCION" class="bg-white rounded-lg p-4 shadow w-full min-w-0">
    <h2 class="text-xl font-bold text-amber-900 border-b-2 border-amber-900 pb-1 mb-3">
        <span class="orden">N</span>Título de la sección
    </h2>
    <p class="text-sm mb-3">Descripción breve de la sección.</p>

    <div class="grid md:grid-cols-2 gap-4 [&>*]:min-w-0">
        <div>
            <h3 class="font-semibold text-amber-800 mb-2">Subtítulo izquierda</h3>
            <pre class="bg-gray-800 text-gray-100 p-3 rounded-md overflow-x-auto text-xs">.ejemplo {
    propiedad: valor;
}</pre>
        </div>
        <div>
            <h3 class="font-semibold text-amber-800 mb-2">Subtítulo derecha</h3>
            <pre class="bg-gray-800 text-gray-100 p-3 rounded-md overflow-x-auto text-xs">.ejemplo {
    propiedad: valor;
}</pre>
        </div>
    </div>

    <!-- Grid adicional dentro de la misma sección -->
    <div class="grid md:grid-cols-2 gap-4 mt-4 [&>*]:min-w-0">
        <div>
            <h3 class="font-semibold text-amber-800 mb-2">Otro subtítulo</h3>
            <pre class="bg-gray-800 text-gray-100 p-3 rounded-md overflow-x-auto text-xs">.ejemplo {
    propiedad: valor;
}</pre>
        </div>
        <div>
            <h3 class="font-semibold text-amber-800 mb-2">Otro subtítulo</h3>
            <pre class="bg-gray-800 text-gray-100 p-3 rounded-md overflow-x-auto text-xs">.ejemplo {
    propiedad: valor;
}</pre>
        </div>
    </div>

    <!-- Subsección anidada dentro de la sección -->
    <section id="ID_SUBSECCION" class="mt-6 min-w-0">
        <h2 class="text-l font-bold text-amber-900 border-b-2 border-amber-900 pb-1 mb-3">
            <span class="orden">N.1</span>Título subsección
        </h2>
        <p class="text-sm mb-4">Descripción de la subsección.</p>

        <div class="grid md:grid-cols-2 gap-6 [&>*]:min-w-0">
            <div>
                <h3 class="font-semibold text-amber-800 mb-2">Subtítulo</h3>
                <pre class="bg-gray-800 text-gray-100 p-3 rounded-md overflow-x-auto text-xs">.ejemplo {
    propiedad: valor;
}</pre>
            </div>
            <div>
                <h3 class="font-semibold text-amber-800 mb-2">Subtítulo</h3>
                <pre class="bg-gray-800 text-gray-100 p-3 rounded-md overflow-x-auto text-xs">.ejemplo {
    propiedad: valor;
}</pre>
            </div>
        </div>
    </section>
</section>
```

---

## Sección mitad (2 de estas = 1 fila en desktop)

```html
<!-- NOMBRE SECCIÓN -->
<section id="ID_SECCION" class="bg-white rounded-lg p-4 shadow basis-full md:basis-[calc(50%-0.5rem)] min-w-0">
    <h2 class="text-xl font-bold text-amber-900 border-b-2 border-amber-900 pb-1 mb-3">
        <span class="orden">N</span>Título sección mitad
    </h2>
    <p class="text-sm mb-3">Descripción breve.</p>

    <pre class="bg-gray-800 text-gray-100 p-3 rounded-md overflow-x-auto text-xs">.ejemplo {
    propiedad: valor;
}</pre>

    <!-- Nota/aviso opcional -->
    <p class="text-sm mb-2 p-2 bg-amber-50 border-l-4 border-amber-500 rounded">
        <strong>2024</strong> - Nota destacada sobre compatibilidad o novedad.
    </p>
</section>
```

---

## Referencia rápida de clases

| Elemento               | Clases                                                                         |
| ---------------------- | ------------------------------------------------------------------------------ |
| Sección ancho completo | `bg-white rounded-lg p-4 shadow w-full min-w-0`                               |
| Sección mitad          | `bg-white rounded-lg p-4 shadow basis-full md:basis-[calc(50%-0.5rem)] min-w-0` |
| Subsección anidada     | `mt-6 min-w-0`                                                                |
| Grid 2 cols            | `grid md:grid-cols-2 gap-4 [&>*]:min-w-0`                                     |
| Grid 2 cols (gap menor)| `grid md:grid-cols-2 gap-3 [&>*]:min-w-0`                                     |
| Grid 2 cols (más gap)  | `grid md:grid-cols-2 gap-6 [&>*]:min-w-0`                                     |
| Grid 2 cols + margen   | `grid md:grid-cols-2 gap-4 mt-4 [&>*]:min-w-0`                                |
| Grid 3 cols            | `grid md:grid-cols-3 gap-4 [&>*]:min-w-0`                                     |
| Grid 3 cols (gap menor)| `grid md:grid-cols-3 gap-3 [&>*]:min-w-0`                                     |
| Bloque `<pre>`         | `bg-gray-800 text-gray-100 p-3 rounded-md overflow-x-auto text-xs`            |
| H2 sección             | `text-xl font-bold text-amber-900 border-b-2 border-amber-900 pb-1 mb-3`     |
| H2 subsección          | `text-l font-bold text-amber-900 border-b-2 border-amber-900 pb-1 mb-3`      |
| H3                     | `font-semibold text-amber-800 mb-2`                                           |
| Nota destacada         | `text-sm mb-2 p-2 bg-amber-50 border-l-4 border-amber-500 rounded`           |

---

## OBLIGATORIO: `[&>*]:min-w-0` en TODOS los grid

`[&>*]:min-w-0` es **obligatorio** en cada `div` con clase `grid`. Sin esta clase los hijos del grid mantienen `min-width: auto` (el valor por defecto en CSS Grid), lo que provoca que bloques `<pre>`, tablas o cualquier contenido ancho fuerce al hijo del grid a expandirse más allá del viewport, causando desbordamiento horizontal en móvil. Al aplicar `min-w-0` a los hijos, se permite que `overflow-x-auto` en los `<pre>` funcione correctamente.
