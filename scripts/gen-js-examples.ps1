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
        'intro' {
            return @(
                New-Section 'console' 'Console' 'Console y salida' @"
console.log('Hola mundo');
"@ @"
                <pre class="bg-gray-800 text-gray-100 p-2 rounded text-xs">Hola mundo</pre>
"@,
                New-Section 'script' 'Script' 'Script en HTML' @"
&lt;script&gt;
  console.log('JS activo');
&lt;/script&gt;
"@ @"
                <div class="text-xs text-gray-500">Se ejecuta en el navegador.</div>
"@
            )
        }
        'sintaxis' {
            return @(
                New-Section 'variables' 'Variables' 'Variables' @"
let nombre = 'Ada';
const edad = 30;
"@ @"
                <div class="text-xs text-gray-500">Usa const por defecto.</div>
"@,
                New-Section 'tipos' 'Tipos' 'Tipos b&aacute;sicos' @"
let activo = true;
let total = 42;
"@ @"
                <div class="text-xs text-gray-500">Boolean y Number.</div>
"@
            )
        }
        'control' {
            return @(
                New-Section 'if' 'if' 'Condicional' @"
if (edad &gt;= 18) { console.log('Adulto'); }
"@ @"
                <div class="text-xs text-gray-500">Eval&uacute;a una condici&oacute;n.</div>
"@,
                New-Section 'for' 'for' 'Bucle for' @"
for (let i = 0; i &lt; 3; i++) { console.log(i); }
"@ @"
                <div class="text-xs text-gray-500">0, 1, 2</div>
"@
            )
        }
        'funciones' {
            return @(
                New-Section 'decl' 'Declaraci&oacute;n' 'Funci&oacute;n declarada' @"
function suma(a, b) { return a + b; }
"@ @"
                <div class="text-xs text-gray-500">suma(2, 3) = 5</div>
"@,
                New-Section 'arrow' 'Arrow' 'Arrow function' @"
const doble = n =&gt; n * 2;
"@ @"
                <div class="text-xs text-gray-500">doble(4) = 8</div>
"@
            )
        }
        'arrays' {
            return @(
                New-Section 'map' 'map' 'map' @"
const nums = [1,2,3];
const dobles = nums.map(n =&gt; n * 2);
"@ @"
                <div class="text-xs text-gray-500">[2, 4, 6]</div>
"@,
                New-Section 'filter' 'filter' 'filter' @"
const pares = nums.filter(n =&gt; n % 2 === 0);
"@ @"
                <div class="text-xs text-gray-500">[2]</div>
"@
            )
        }
        'objetos' {
            return @(
                New-Section 'literal' 'Objeto' 'Objeto literal' @"
const user = { nombre: 'Ada', edad: 30 };
"@ @"
                <div class="text-xs text-gray-500">user.nombre</div>
"@,
                New-Section 'json' 'JSON' 'JSON' @"
const json = JSON.stringify(user);
"@ @"
                <div class="text-xs text-gray-500">\"{\"nombre\":\"Ada\",\"edad\":30}\"</div>
"@
            )
        }
        'dom' {
            return @(
                New-Section 'query' 'querySelector' 'Seleccionar' @"
const titulo = document.querySelector('h1');
"@ @"
                <div class="text-xs text-gray-500">Acceso al DOM.</div>
"@,
                New-Section 'create' 'createElement' 'Crear nodo' @"
const p = document.createElement('p');
p.textContent = 'Hola';
"@ @"
                <div class="text-xs text-gray-500">Crea un p.</div>
"@
            )
        }
    }
}

$themes = @(
    @{ num=1; slug='intro'; titulo='Introducci&oacute;n y Entorno'; desc='Ejemplos pr&aacute;cticos del Tema 1 de JS: consola y script.' },
    @{ num=2; slug='sintaxis'; titulo='Sintaxis y Variables'; desc='Ejemplos pr&aacute;cticos del Tema 2 de JS: variables y tipos.' },
    @{ num=3; slug='control'; titulo='Control de Flujo'; desc='Ejemplos pr&aacute;cticos del Tema 3 de JS: if y bucles.' },
    @{ num=4; slug='funciones'; titulo='Funciones'; desc='Ejemplos pr&aacute;cticos del Tema 4 de JS: funciones.' },
    @{ num=5; slug='arrays'; titulo='Arrays'; desc='Ejemplos pr&aacute;cticos del Tema 5 de JS: map y filter.' },
    @{ num=6; slug='objetos'; titulo='Objetos'; desc='Ejemplos pr&aacute;cticos del Tema 6 de JS: objetos y JSON.' },
    @{ num=7; slug='dom'; titulo='DOM'; desc='Ejemplos pr&aacute;cticos del Tema 7 de JS: seleccionar y crear.' }
)

$menuBase = @'
                    <div class="px-3 py-2 text-xs font-semibold text-gray-500 uppercase tracking-wide border-b border-gray-100">Temas JavaScript</div>
                    <a href="tema1-intro.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">1. Introducci&oacute;n y Entorno</a>
                    <a href="tema2-sintaxis.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">2. Sintaxis y Variables</a>
                    <a href="tema3-control.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">3. Control de Flujo</a>
                    <a href="tema4-funciones.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">4. Funciones</a>
                    <a href="tema5-arrays.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">5. Arrays</a>
                    <a href="tema6-objetos.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">6. Objetos</a>
                    <a href="tema7-dom.html" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">7. DOM</a>
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
    $file = "js/tema$($t.num)-$($t.slug)-ejemplos.html"

    $html = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$title - Apuntes JavaScript</title>
    <meta name="description" content="$($t.desc)">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="../assets/css/styles.css">
    <link rel="icon" type="image/png" href="../favicon.ico">
</head>
<body class="bg-gray-100 text-gray-800 font-sans text-sm leading-relaxed">

    <!-- CABECERA PRINCIPAL -->
    <header class="bg-gradient-to-br from-yellow-700 to-yellow-600 text-white sticky top-0 z-50 shadow-md">
        <div class="max-w-6xl mx-auto px-5 py-3 flex items-center justify-between gap-4">
            <a href="../index.html#js" class="flex items-center gap-2 text-white no-underline hover:opacity-80">
                <span class="bg-white/20 px-3 py-1 rounded font-bold text-lg">JavaScript</span>
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
        <a href="tema$($t.num)-$($t.slug).html" class="inline-flex items-center gap-1.5 px-4 py-2 bg-yellow-700 text-white no-underline rounded text-xs hover:bg-yellow-600">&larr; Volver al tema</a>
        <span class="w-36"></span>
        <span class="w-36"></span>
    </nav>

    <footer class="text-center py-5 text-gray-400 text-xs border-t border-gray-200 mt-4">
        <p>Apuntes JavaScript &mdash; Ejemplos Tema $($t.num)</p>
    </footer>

    <script src="../assets/js/components.js"></script>
</body>
</html>
"@

    Set-Content -Encoding UTF8 $file $html
}

foreach ($t in $themes) {
    $temaFile = "js/tema$($t.num)-$($t.slug).html"
    if (-not (Test-Path $temaFile)) { continue }
    $content = Get-Content -Raw $temaFile
    if ($content -notmatch 'Ver ejemplos del tema') {
        $button = @"

    <div class="bg-white border-b border-gray-200 px-5 py-2.5 max-w-6xl mx-auto">
        <a href="tema$($t.num)-$($t.slug)-ejemplos.html" class="inline-flex items-center gap-2 px-3 py-1.5 text-xs font-medium bg-yellow-700 text-white rounded hover:bg-yellow-600 no-underline">
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

$indexPath = 'js/index.html'
$indexContent = Get-Content -Raw $indexPath
foreach ($t in $themes) {
    $slug = $t.slug
    $num = $t.num
    $pattern = '(tema' + $num + '-' + $slug + '\.html" class="text-xs px-2\.5 py-1 bg-yellow-50 text-yellow-700 rounded-full border border-yellow-200 no-underline hover:bg-yellow-100">Tema</a>\s*)<span[^>]*>Ejemplos \(pronto\)</span>'
    $replacement = '$1<a href="tema' + $num + '-' + $slug + '-ejemplos.html" class="text-xs px-2.5 py-1 bg-yellow-700 text-white rounded-full no-underline hover:bg-yellow-600">Ejemplos</a>'
    $indexContent = [regex]::Replace($indexContent, $pattern, $replacement)
}
Set-Content -Encoding UTF8 $indexPath $indexContent
