$ErrorActionPreference = 'Stop'

function New-Section {
    param(
        [string]$Id,
        [string]$Label,
        [string]$Title,
        [string]$Code,
        [string]$Preview
    )
    [pscustomobject]@{
        id = $Id
        label = $Label
        title = $Title
        code = $Code
        preview = $Preview
    }
}

function Get-Sections {
    param([string]$Slug)

    switch ($Slug) {
        'tablas' {
            return @(
                New-Section 'basica' 'Tabla b&aacute;sica' 'Tabla b&aacute;sica' @"
&lt;table&gt;
  &lt;tr&gt;&lt;th&gt;Producto&lt;/th&gt;&lt;th&gt;Precio&lt;/th&gt;&lt;/tr&gt;
  &lt;tr&gt;&lt;td&gt;Teclado&lt;/td&gt;&lt;td&gt;25 &euro;&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
"@ @"
                <table class="w-full text-sm border border-gray-200">
                    <tr class="bg-amber-900 text-white">
                        <th class="px-2 py-1 text-left">Producto</th>
                        <th class="px-2 py-1 text-left">Precio</th>
                    </tr>
                    <tr>
                        <td class="px-2 py-1 border-t">Teclado</td>
                        <td class="px-2 py-1 border-t">25 &euro;</td>
                    </tr>
                </table>
"@,
                New-Section 'thead' 'thead / tbody' 'thead y tbody' @"
&lt;table&gt;
  &lt;thead&gt;...&lt;/thead&gt;
  &lt;tbody&gt;...&lt;/tbody&gt;
&lt;/table&gt;
"@ @"
                <table class="w-full text-sm border border-gray-200">
                    <thead class="bg-amber-100">
                        <tr><th class="px-2 py-1 text-left">Mes</th><th class="px-2 py-1 text-left">Ventas</th></tr>
                    </thead>
                    <tbody>
                        <tr><td class="px-2 py-1 border-t">Enero</td><td class="px-2 py-1 border-t">120</td></tr>
                        <tr><td class="px-2 py-1 border-t">Febrero</td><td class="px-2 py-1 border-t">95</td></tr>
                    </tbody>
                </table>
"@,
                New-Section 'span' 'colspan / rowspan' 'Colspan y Rowspan' @"
&lt;td colspan="2"&gt;Total&lt;/td&gt;
"@ @"
                <table class="w-full text-sm border border-gray-200">
                    <tr class="bg-amber-900 text-white"><th class="px-2 py-1">Q1</th><th class="px-2 py-1">Q2</th></tr>
                    <tr><td class="px-2 py-1 border-t" colspan="2">Total: 215</td></tr>
                </table>
"@,
                New-Section 'responsive' 'Tabla responsive' 'Tabla responsive' @"
&lt;div class="overflow-x-auto"&gt;
  &lt;table&gt;...&lt;/table&gt;
&lt;/div&gt;
"@ @"
                <div class="text-xs text-gray-500">Envuelve la tabla con overflow horizontal para m&oacute;vil.</div>
"@
            )
        }
        'formularios' {
            return @(
                New-Section 'form' 'Formulario' 'Formulario b&aacute;sico' @"
&lt;form&gt;
  &lt;label&gt;Email&lt;/label&gt;
  &lt;input type="email" required&gt;
&lt;/form&gt;
"@ @"
                <form class="space-y-2">
                    <label class="text-xs font-semibold">Email</label>
                    <input type="email" placeholder="tu@email.com" class="w-full border rounded px-2 py-1 text-sm">
                    <button class="bg-amber-900 text-white px-3 py-1 rounded text-xs">Enviar</button>
                </form>
"@,
                New-Section 'inputs' 'Inputs' 'Tipos de input' @"
&lt;input type="text"&gt;
&lt;input type="password"&gt;
&lt;input type="date"&gt;
"@ @"
                <div class="grid gap-2">
                    <input type="text" placeholder="Texto" class="border rounded px-2 py-1 text-sm">
                    <input type="password" placeholder="Contrase&ntilde;a" class="border rounded px-2 py-1 text-sm">
                    <input type="date" class="border rounded px-2 py-1 text-sm">
                </div>
"@,
                New-Section 'select' 'Select y textarea' 'Select y textarea' @"
&lt;select&gt;
  &lt;option&gt;A&lt;/option&gt;
&lt;/select&gt;
&lt;textarea&gt;&lt;/textarea&gt;
"@ @"
                <div class="grid gap-2">
                    <select class="border rounded px-2 py-1 text-sm"><option>Opcion A</option><option>Opcion B</option></select>
                    <textarea class="border rounded px-2 py-1 text-sm" rows="3" placeholder="Comentario"></textarea>
                </div>
"@,
                New-Section 'validacion' 'Validaci&oacute;n' 'Validaci&oacute;n nativa' @"
&lt;input type="email" required&gt;
&lt;input type="number" min="1" max="5"&gt;
"@ @"
                <p class="text-xs text-gray-500">Usa atributos como required, min, max y pattern.</p>
"@
            )
        }
        'semantica' {
            return @(
                New-Section 'layout' 'Estructura sem&aacute;ntica' 'Estructura sem&aacute;ntica' @"
&lt;header&gt;...&lt;/header&gt;
&lt;main&gt;...&lt;/main&gt;
&lt;footer&gt;...&lt;/footer&gt;
"@ @"
                <div class="border border-amber-200 rounded p-2 text-xs">header / main / footer</div>
"@,
                New-Section 'video' 'Video' 'Video' @"
&lt;video controls&gt;
  &lt;source src="video.mp4" type="video/mp4"&gt;
&lt;/video&gt;
"@ @"
                <div class="aspect-video bg-amber-100 border border-amber-200 rounded flex items-center justify-center text-amber-800">Video (placeholder)</div>
"@,
                New-Section 'audio' 'Audio' 'Audio' @"
&lt;audio controls&gt;
  &lt;source src="audio.mp3" type="audio/mpeg"&gt;
&lt;/audio&gt;
"@ @"
                <div class="bg-amber-100 border border-amber-200 rounded p-2 text-xs">Audio (placeholder)</div>
"@,
                New-Section 'figure' 'Figure' 'Figure y figcaption' @"
&lt;figure&gt;
  &lt;img ...&gt;
  &lt;figcaption&gt;...&lt;/figcaption&gt;
&lt;/figure&gt;
"@ @"
                <figure class="bg-gray-50 border border-dashed border-gray-300 p-3 rounded-md text-sm">
                    <div class="aspect-video bg-amber-100 border border-amber-200 rounded"></div>
                    <figcaption class="text-xs text-gray-500 mt-2">Leyenda</figcaption>
                </figure>
"@
            )
        }
        'atributos' {
            return @(
                New-Section 'id-class' 'id y class' 'id y class' @"
&lt;div id="hero" class="card destacado"&gt;...&lt;/div&gt;
"@ @"
                <div class="border border-amber-200 rounded p-2 text-sm">#hero .card.destacado</div>
"@,
                New-Section 'data' 'data-*' 'Atributos data-*' @"
&lt;button data-modal="registro"&gt;Abrir&lt;/button&gt;
"@ @"
                <button class="bg-amber-900 text-white px-3 py-1 rounded text-xs">Abrir</button>
"@,
                New-Section 'aria' 'ARIA' 'ARIA y accesibilidad' @"
&lt;button aria-label="Cerrar"&gt;X&lt;/button&gt;
"@ @"
                <button class="border px-2 py-1 rounded text-xs">X</button>
"@,
                New-Section 'content' 'contenteditable' 'contenteditable' @"
&lt;p contenteditable="true"&gt;Edita esto&lt;/p&gt;
"@ @"
                <p class="border border-amber-200 rounded px-2 py-1 text-xs">Edita esto</p>
"@
            )
        }
        'accesibilidad' {
            return @(
                New-Section 'labels' 'Labels' 'Label asociado' @"
&lt;label for="email"&gt;Email&lt;/label&gt;
&lt;input id="email" type="email"&gt;
"@ @"
                <label class="text-xs font-semibold">Email</label>
                <input type="email" class="border rounded px-2 py-1 text-sm w-full" placeholder="tu@email.com">
"@,
                New-Section 'aria' 'ARIA' 'ARIA label' @"
&lt;button aria-label="Abrir men&uacute;"&gt;&#8801;&lt;/button&gt;
"@ @"
                <button class="border px-2 py-1 rounded text-xs">&equiv;</button>
"@,
                New-Section 'skip' 'Skip link' 'Skip link' @"
&lt;a href="#main" class="skip-link"&gt;Saltar&lt;/a&gt;
"@ @"
                <p class="text-xs text-gray-500">Enlace para saltar navegaci&oacute;n.</p>
"@
            )
        }
        'seo' {
            return @(
                New-Section 'meta' 'Title y meta' 'Title y meta description' @"
&lt;title&gt;Titulo&lt;/title&gt;
&lt;meta name="description" content="Resumen"&gt;
"@ @"
                <p class="text-xs text-gray-500">Title y description influyen en el snippet.</p>
"@,
                New-Section 'og' 'Open Graph' 'Open Graph' @"
&lt;meta property="og:title" content="..."&gt;
"@ @"
                <p class="text-xs text-gray-500">Define previsualizaci&oacute;n social.</p>
"@,
                New-Section 'jsonld' 'JSON-LD' 'Datos estructurados' @"
&lt;script type="application/ld+json"&gt;{...}&lt;/script&gt;
"@ @"
                <pre class="bg-gray-800 text-gray-100 p-2 rounded text-xs">{ "@context": "https://schema.org" }</pre>
"@
            )
        }
        'seo-ia' {
            return @(
                New-Section 'llms' 'llms.txt' 'llms.txt' @"
User-agent: *
Disallow: /privado/
"@ @"
                <pre class="bg-gray-800 text-gray-100 p-2 rounded text-xs">User-agent: *
Disallow: /privado/</pre>
"@,
                New-Section 'faq' 'FAQ' 'FAQ estructurada' @"
&lt;section&gt;
  &lt;h2&gt;FAQ&lt;/h2&gt;
&lt;/section&gt;
"@ @"
                <div class="border border-amber-200 rounded p-2 text-xs">FAQ con preguntas claras.</div>
"@,
                New-Section 'resumen' 'Res&uacute;menes' 'Resumen corto' @"
&lt;p&gt;Resumen conciso del contenido...&lt;/p&gt;
"@ @"
                <p class="text-xs text-gray-500">Resumenes ayudan a IA y usuarios.</p>
"@
            )
        }
    }
}

$themes = @(
    @{ num=6; slug='tablas'; titulo='Tablas'; desc='Ejemplos pr&aacute;cticos del Tema 6 de HTML: tablas, cabeceras y combinaciones.' },
    @{ num=7; slug='formularios'; titulo='Formularios e Inputs'; desc='Ejemplos pr&aacute;cticos del Tema 7 de HTML: formularios, inputs y validaci&oacute;n.' },
    @{ num=8; slug='semantica'; titulo='Sem&aacute;ntica y Multimedia'; desc='Ejemplos pr&aacute;cticos del Tema 8 de HTML: sem&aacute;ntica y multimedia.' },
    @{ num=9; slug='atributos'; titulo='Atributos Globales y Buenas Pr&aacute;cticas'; desc='Ejemplos pr&aacute;cticos del Tema 9 de HTML: atributos globales y data-*.' },
    @{ num=10; slug='accesibilidad'; titulo='Accesibilidad Web'; desc='Ejemplos pr&aacute;cticos del Tema 10 de HTML: accesibilidad y ARIA.' },
    @{ num=11; slug='seo'; titulo='Buenas pr&aacute;cticas SEO'; desc='Ejemplos pr&aacute;cticos del Tema 11 de HTML: meta y Open Graph.' },
    @{ num=12; slug='seo-ia'; titulo='SEO para IA (GEO)'; desc='Ejemplos pr&aacute;cticos del Tema 12 de HTML: llms.txt y contenido estructurado.' }
)

$menuBase = @'
                    <div class="px-3 py-2 text-xs font-semibold text-gray-500 uppercase tracking-wide border-b border-gray-100">Temas HTML</div>
                    <a href="tema1-estructura.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">1. Estructura b&aacute;sica</a>
                    <a href="tema2-texto.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">2. Formato de texto</a>
                    <a href="tema3-enlaces.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">3. Enlaces</a>
                    <a href="tema4-imagenes.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">4. Im&aacute;genes</a>
                    <a href="tema5-listas.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">5. Listas</a>
                    <a href="tema6-tablas.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">6. Tablas</a>
                    <a href="tema7-formularios.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">7. Formularios</a>
                    <a href="tema8-semantica.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">8. Sem&aacute;ntica HTML5</a>
                    <a href="tema9-atributos.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">9. Atributos globales</a>
                    <a href="tema10-accesibilidad.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">10. Accesibilidad</a>
                    <a href="tema11-seo.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">11. SEO</a>
                    <a href="tema12-seo-ia.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">12. SEO para IA</a>
                    <div class="border-t border-gray-100 mt-2 pt-2">
                        <a href="../index.html" class="block px-4 py-2 text-sm text-amber-900 hover:bg-amber-50 font-medium">&larr; Volver al &iacute;ndice</a>
                    </div>
'@

function Get-MenuForTheme {
    param([int]$Num, [string]$Slug)
    $menu = $menuBase
    $target = 'tema' + $Num + '-' + $Slug + '.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50"'
    $replace = 'tema' + $Num + '-' + $Slug + '.html" class="block px-4 py-2 text-sm text-amber-900 bg-amber-50 font-medium"'
    $menu -replace [regex]::Escape($target), $replace
}

foreach ($t in $themes) {
    $sections = Get-Sections $t.slug
    $navLinks = ($sections | ForEach-Object { "            <a href=""#${($_.id)}"" class=""text-xs px-2.5 py-1 bg-amber-50 text-amber-900 rounded-full hover:bg-amber-100 no-underline border border-amber-200"">$($_.label)</a>" }) -join "`n"

    $sectionsHtml = ''
    $i = 1
    foreach ($s in $sections) {
        $sectionsHtml += @"
        <section id="$($s.id)" class="bg-white rounded-lg p-4 shadow w-full min-w-0">
            <h2 class="text-xl font-bold text-amber-900 border-b-2 border-amber-900 pb-1 mb-3">
                <span class="orden">$i</span>$($s.title)
            </h2>
            <div class="grid md:grid-cols-2 gap-4 [&>*]:min-w-0">
                <div>
                    <h3 class="font-semibold text-amber-800 mb-2">C&oacute;digo</h3>
                    <pre class="bg-gray-800 text-gray-100 p-3 rounded-md overflow-x-auto text-xs">$($s.code)</pre>
                </div>
                <div>
                    <h3 class="font-semibold text-amber-800 mb-2">Vista previa</h3>
$($s.preview)
                </div>
            </div>
        </section>

"@
        $i++
    }

    $menu = Get-MenuForTheme -Num $t.num -Slug $t.slug
    $title = "Ejemplos Tema $($t.num): $($t.titulo)"
    $file = "html/tema$($t.num)-$($t.slug)-ejemplos.html"

    $html = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$title - Apuntes HTML</title>
    <meta name="description" content="$($t.desc)">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="../assets/css/styles.css">
    <link rel="icon" type="image/png" href="../favicon.ico">
</head>
<body class="bg-gray-100 text-gray-800 font-sans text-sm leading-relaxed">

    <!-- CABECERA PRINCIPAL -->
    <header class="bg-gradient-to-br from-amber-900 to-amber-800 text-white sticky top-0 z-50 shadow-md">
        <div class="max-w-6xl mx-auto px-5 py-3 flex items-center justify-between gap-4">
            <a href="../index.html#html" class="flex items-center gap-2 text-white no-underline hover:opacity-80">
                <span class="bg-white/20 px-3 py-1 rounded font-bold text-lg">HTML</span>
            </a>
            <h1 class="flex-1 text-lg font-semibold truncate">$title</h1>
            <div class="relative tema-dropdown">
                <button class="flex items-center gap-2 bg-white/20 hover:bg-white/30 px-4 py-2 rounded text-sm font-medium transition-colors">
                    <span>Temas</span>
                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                    </svg>
                </button>
                <div class="tema-dropdown-menu absolute right-0 top-full mt-1 bg-white rounded-lg shadow-xl border border-gray-200 py-2 min-w-64 max-h-96 overflow-y-auto hidden">
$menu
                </div>
            </div>
        </div>
    </header>

    <div data-component="breadcrumb"></div>

    <nav class="bg-white border-b border-gray-200 px-5 py-2.5 max-w-6xl mx-auto">
        <p class="text-xs text-gray-500 mb-1.5 font-semibold uppercase tracking-wide">En este tema</p>
        <div class="flex flex-wrap gap-1.5">
$navLinks
        </div>
    </nav>

    <main class="flex flex-col gap-4 p-5 max-w-6xl mx-auto">
$sectionsHtml
    </main>

    <nav class="flex justify-between items-center max-w-6xl mx-auto mt-5 px-5 pb-5">
        <a href="tema$($t.num)-$($t.slug).html" class="inline-flex items-center gap-1.5 px-4 py-2 bg-amber-900 text-white no-underline rounded text-xs hover:bg-amber-800">&larr; Volver al tema</a>
        <span class="w-36"></span>
        <span class="w-36"></span>
    </nav>

    <footer class="text-center py-5 text-gray-400 text-xs border-t border-gray-200 mt-4">
        <p>Apuntes HTML &mdash; Ejemplos Tema $($t.num)</p>
    </footer>

    <script src="../assets/js/components.js"></script>
</body>
</html>
"@

    Set-Content -Encoding UTF8 $file $html
}

foreach ($t in $themes) {
    $temaFile = "html/tema$($t.num)-$($t.slug).html"
    if (-not (Test-Path $temaFile)) { continue }
    $content = Get-Content -Raw $temaFile
    if ($content -match 'Ver ejemplos del tema') { continue }
    $button = @"

    <div class="bg-white border-b border-gray-200 px-5 py-2.5 max-w-6xl mx-auto">
        <a href="tema$($t.num)-$($t.slug)-ejemplos.html" class="inline-flex items-center gap-2 px-3 py-1.5 text-xs font-medium bg-amber-900 text-white rounded hover:bg-amber-800 no-underline">
            Ver ejemplos del tema
        </a>
    </div>

    <main
"@
    $content = [regex]::Replace($content, "</nav>\\s*\\n\\s*\\n\\s*<main", "</nav>$button")
    Set-Content -Encoding UTF8 $temaFile $content
}

$indexPath = 'html/index.html'
$indexContent = Get-Content -Raw $indexPath
foreach ($t in $themes) {
    $slug = $t.slug
    $num = $t.num
    $pattern = '(tema' + $num + '-' + $slug + '\.html" class="text-xs px-2\.5 py-1 bg-amber-50 text-amber-900 rounded-full border border-amber-200 no-underline hover:bg-amber-100">Tema</a>\s*)<span[^>]*>Ejemplos \(pronto\)</span>'
    $replacement = '$1<a href="tema' + $num + '-' + $slug + '-ejemplos.html" class="text-xs px-2.5 py-1 bg-amber-900 text-white rounded-full no-underline hover:bg-amber-800">Ejemplos</a>'
    $indexContent = [regex]::Replace($indexContent, $pattern, $replacement)
}
Set-Content -Encoding UTF8 $indexPath $indexContent

# Ensure example button exists and main tag is intact for temas 6-12
foreach ($t in $themes) {
    $temaFile = "html/tema$($t.num)-$($t.slug).html"
    if (-not (Test-Path $temaFile)) { continue }

    $content = Get-Content -Raw $temaFile

    if ($content -notmatch '<main') {
        $content = [regex]::Replace($content, '\n\s*class="flex', "`n    <main class=""flex", 1)
    }

    if ($content -notmatch 'Ver ejemplos del tema') {
        $button = @"

    <div class="bg-white border-b border-gray-200 px-5 py-2.5 max-w-6xl mx-auto">
        <a href="tema$($t.num)-$($t.slug)-ejemplos.html" class="inline-flex items-center gap-2 px-3 py-1.5 text-xs font-medium bg-amber-900 text-white rounded hover:bg-amber-800 no-underline">
            Ver ejemplos del tema
        </a>
    </div>

"@
        $idxMain = $content.IndexOf('<main')
        if ($idxMain -ge 0) {
            $content = $content.Substring(0, $idxMain) + $button + $content.Substring($idxMain)
        }
    }

    Set-Content -Encoding UTF8 $temaFile $content
}
