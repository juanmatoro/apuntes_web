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
        'conceptos' {
            return @(
                New-Section 'selectores' 'Selectores' 'Selectores b&aacute;sicos' @"
/* Selector de etiqueta */
p { color: #1f2937; }

/* Clase */
.card { padding: 1rem; }

/* ID */
#hero { margin-top: 2rem; }
"@ @"
                <div class="text-xs text-gray-500">Ejemplos de selectores simples.</div>
"@,
                New-Section 'cascada' 'Cascada' 'Cascada y especificidad' @"
.btn { color: blue; }
button.btn { color: red; }
"@ @"
                <div class="text-xs text-gray-500">Regla m&aacute;s espec&iacute;fica gana.</div>
"@,
                New-Section 'herencia' 'Herencia' 'Herencia' @"
body { color: #111; }
p { font-weight: 600; }
"@ @"
                <p class="text-xs text-gray-500">El color se hereda del body.</p>
"@
            )
        }
        'pseudos' {
            return @(
                New-Section 'hover' ':hover' 'Pseudoclases' @"
a:hover { text-decoration: underline; }
input:focus { outline: 2px solid #f59e0b; }
"@ @"
                <a class="text-blue-600" href="#">Enlace hover</a>
"@,
                New-Section 'before' '::before' 'Pseudo-elementos' @"
.badge::before { content: 'NEW'; }
"@ @"
                <span class="text-xs text-gray-500">Usa ::before para decoraci&oacute;n.</span>
"@
            )
        }
        'funciones' {
            return @(
                New-Section 'var' 'var()' 'Custom properties' @"
:root { --gap: 16px; }
.box { padding: var(--gap); }
"@ @"
                <div class="text-xs text-gray-500">Variables CSS reutilizables.</div>
"@,
                New-Section 'calc' 'calc()' 'Funciones matem&aacute;ticas' @"
.col { width: calc(50% - 1rem); }
"@ @"
                <div class="text-xs text-gray-500">Combina porcentajes y px.</div>
"@
            )
        }
        'color-unidades' {
            return @(
                New-Section 'color' 'Color' 'Color moderno' @"
.swatch { color: oklch(60% 0.2 250); }
"@ @"
                <div class="text-xs text-gray-500">OKLCH da control perceptual.</div>
"@,
                New-Section 'unidades' 'Unidades' 'Unidades relativas' @"
.title { font-size: clamp(1.5rem, 2vw, 2.5rem); }
"@ @"
                <div class="text-xs text-gray-500">clamp() para responsive tipogr&aacute;fico.</div>
"@
            )
        }
        'box-model' {
            return @(
                New-Section 'box' 'Box model' 'Box model' @"
.card { padding: 16px; border: 1px solid #ddd; }
"@ @"
                <div class="text-xs text-gray-500">Padding + border + content.</div>
"@,
                New-Section 'sizing' 'box-sizing' 'box-sizing' @"
* { box-sizing: border-box; }
"@ @"
                <div class="text-xs text-gray-500">Incluye padding en el ancho.</div>
"@
            )
        }
        'layout' {
            return @(
                New-Section 'flex' 'Flex' 'Flexbox' @"
.row { display: flex; gap: 1rem; }
"@ @"
                <div class="text-xs text-gray-500">Layout horizontal r&aacute;pido.</div>
"@,
                New-Section 'grid' 'Grid' 'CSS Grid' @"
.grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 1rem; }
"@ @"
                <div class="text-xs text-gray-500">Grid para mallas complejas.</div>
"@
            )
        }
        'posicionamiento' {
            return @(
                New-Section 'relative' 'Relative' 'Position relative' @"
.box { position: relative; top: 8px; }
"@ @"
                <div class="text-xs text-gray-500">Desplazamiento sin sacar del flujo.</div>
"@,
                New-Section 'sticky' 'Sticky' 'Position sticky' @"
.nav { position: sticky; top: 0; }
"@ @"
                <div class="text-xs text-gray-500">Se fija al hacer scroll.</div>
"@
            )
        }
        'interacciones' {
            return @(
                New-Section 'scroll' 'Scroll' 'Overflow y scroll' @"
.panel { overflow: auto; max-height: 200px; }
"@ @"
                <div class="text-xs text-gray-500">Scroll interno controlado.</div>
"@,
                New-Section 'snap' 'Snap' 'Scroll snap' @"
.snap { scroll-snap-type: x mandatory; }
"@ @"
                <div class="text-xs text-gray-500">Snapping en carruseles.</div>
"@
            )
        }
        'texto' {
            return @(
                New-Section 'tipografia' 'Tipograf&iacute;a' 'Tipograf&iacute;a' @"
.title { font-weight: 700; letter-spacing: -0.02em; }
"@ @"
                <div class="text-xs text-gray-500">Jerarqu&iacute;a visual clara.</div>
"@,
                New-Section 'clamp' 'Line clamp' 'Line clamp' @"
.excerpt { display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; }
"@ @"
                <div class="text-xs text-gray-500">Corta texto en 2 l&iacute;neas.</div>
"@
            )
        }
        'graficos' {
            return @(
                New-Section 'background' 'Fondos' 'Fondos y gradientes' @"
.hero { background: linear-gradient(120deg, #f59e0b, #f97316); }
"@ @"
                <div class="text-xs text-gray-500">Gradientes para profundidad.</div>
"@,
                New-Section 'shadow' 'Sombras' 'Sombras' @"
.card { box-shadow: 0 10px 30px rgba(0,0,0,.15); }
"@ @"
                <div class="text-xs text-gray-500">Volumen y jerarqu&iacute;a.</div>
"@
            )
        }
        'animaciones' {
            return @(
                New-Section 'transition' 'Transiciones' 'Transiciones' @"
.btn { transition: transform .2s ease; }
.btn:hover { transform: translateY(-2px); }
"@ @"
                <div class="text-xs text-gray-500">Feedback al pasar.</div>
"@,
                New-Section 'keyframes' 'Keyframes' '@keyframes' @"
@keyframes fade { from {opacity:0;} to {opacity:1;} }
"@ @"
                <div class="text-xs text-gray-500">Animaciones personalizadas.</div>
"@
            )
        }
        'rwd' {
            return @(
                New-Section 'media' 'Media queries' 'Media queries' @"
@media (max-width: 768px) { .grid { grid-template-columns: 1fr; } }
"@ @"
                <div class="text-xs text-gray-500">Layout adaptable.</div>
"@,
                New-Section 'container' 'Container queries' 'Container queries' @"
@container (min-width: 500px) { .card { display: grid; } }
"@ @"
                <div class="text-xs text-gray-500">Componentes responsivos por contenedor.</div>
"@
            )
        }
    }
}

$themes = @(
    @{ num=1; slug='conceptos'; titulo='Conceptos CSS'; desc='Ejemplos pr&aacute;cticos del Tema 1 de CSS: selectores, cascada y herencia.' },
    @{ num=2; slug='pseudos'; titulo='Pseudo-elementos y Pseudo-clases'; desc='Ejemplos pr&aacute;cticos del Tema 2 de CSS: pseudo-clases y pseudo-elementos.' },
    @{ num=3; slug='funciones'; titulo='Funciones y Custom Properties'; desc='Ejemplos pr&aacute;cticos del Tema 3 de CSS: var(), calc() y custom properties.' },
    @{ num=4; slug='color-unidades'; titulo='Color y Unidades'; desc='Ejemplos pr&aacute;cticos del Tema 4 de CSS: color y unidades.' },
    @{ num=5; slug='box-model'; titulo='Modelo de Caja'; desc='Ejemplos pr&aacute;cticos del Tema 5 de CSS: box model y sizing.' },
    @{ num=6; slug='layout'; titulo='Layout: Flexbox y Grid'; desc='Ejemplos pr&aacute;cticos del Tema 6 de CSS: flex y grid.' },
    @{ num=7; slug='posicionamiento'; titulo='Posicionamiento y Espaciado'; desc='Ejemplos pr&aacute;cticos del Tema 7 de CSS: position y sticky.' },
    @{ num=8; slug='interacciones'; titulo='Interacciones y Scroll'; desc='Ejemplos pr&aacute;cticos del Tema 8 de CSS: overflow y scroll.' },
    @{ num=9; slug='texto'; titulo='Texto y Tipograf&iacute;a'; desc='Ejemplos pr&aacute;cticos del Tema 9 de CSS: tipograf&iacute;a y texto.' },
    @{ num=10; slug='graficos'; titulo='Formas y Gr&aacute;ficos'; desc='Ejemplos pr&aacute;cticos del Tema 10 de CSS: fondos y sombras.' },
    @{ num=11; slug='animaciones'; titulo='CSS Din&aacute;mico'; desc='Ejemplos pr&aacute;cticos del Tema 11 de CSS: transiciones y animaciones.' },
    @{ num=12; slug='rwd'; titulo='RWD, Accesibilidad y Rendimiento'; desc='Ejemplos pr&aacute;cticos del Tema 12 de CSS: media y container queries.' }
)

$menuBase = @'
                    <div class="px-3 py-2 text-xs font-semibold text-gray-500 uppercase tracking-wide border-b border-gray-100">Temas CSS</div>
                    <a href="tema1-conceptos.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">1. Conceptos CSS</a>
                    <a href="tema2-pseudos.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">2. Pseudo-elementos y Pseudo-clases</a>
                    <a href="tema3-funciones.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">3. Funciones y Custom Properties</a>
                    <a href="tema4-color-unidades.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">4. Color y Unidades</a>
                    <a href="tema5-box-model.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">5. Modelo de Caja</a>
                    <a href="tema6-layout.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">6. Layout: Flexbox y Grid</a>
                    <a href="tema7-posicionamiento.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">7. Posicionamiento y Espaciado</a>
                    <a href="tema8-interacciones.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">8. Interacciones y Scroll</a>
                    <a href="tema9-texto.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">9. Texto y Tipograf&iacute;a</a>
                    <a href="tema10-graficos.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">10. Formas y Gr&aacute;ficos</a>
                    <a href="tema11-animaciones.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">11. CSS Din&aacute;mico</a>
                    <a href="tema12-rwd.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">12. RWD, Accesibilidad y Rendimiento</a>
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
    $file = "css/tema$($t.num)-$($t.slug)-ejemplos.html"

    $html = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$title - Apuntes CSS</title>
    <meta name="description" content="$($t.desc)">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="../assets/css/styles.css">
    <link rel="icon" type="image/png" href="../favicon.ico">
</head>
<body class="bg-gray-100 text-gray-800 font-sans text-sm leading-relaxed">

    <!-- CABECERA PRINCIPAL -->
    <header class="bg-gradient-to-br from-amber-900 to-amber-800 text-white sticky top-0 z-50 shadow-md">
        <div class="max-w-6xl mx-auto px-5 py-3 flex items-center justify-between gap-4">
            <a href="../index.html#css" class="flex items-center gap-2 text-white no-underline hover:opacity-80">
                <span class="bg-white/20 px-3 py-1 rounded font-bold text-lg">CSS</span>
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
        <p>Apuntes CSS &mdash; Ejemplos Tema $($t.num)</p>
    </footer>

    <script src="../assets/js/components.js"></script>
</body>
</html>
"@

    Set-Content -Encoding UTF8 $file $html
}

foreach ($t in $themes) {
    $temaFile = "css/tema$($t.num)-$($t.slug).html"
    if (-not (Test-Path $temaFile)) { continue }
    $content = Get-Content -Raw $temaFile
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

$indexPath = 'css/index.html'
$indexContent = Get-Content -Raw $indexPath
foreach ($t in $themes) {
    $slug = $t.slug
    $num = $t.num
    $pattern = '(tema' + $num + '-' + $slug + '\.html" class="text-xs px-2\.5 py-1 bg-amber-50 text-amber-900 rounded-full border border-amber-200 no-underline hover:bg-amber-100">Tema</a>\s*)<span[^>]*>Ejemplos \(pronto\)</span>'
    $replacement = '$1<a href="tema' + $num + '-' + $slug + '-ejemplos.html" class="text-xs px-2.5 py-1 bg-amber-900 text-white rounded-full no-underline hover:bg-amber-800">Ejemplos</a>'
    $indexContent = [regex]::Replace($indexContent, $pattern, $replacement)
}
Set-Content -Encoding UTF8 $indexPath $indexContent
