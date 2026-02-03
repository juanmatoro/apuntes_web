/**
 * Componentes reutilizables para los apuntes
 * Header con dropdown, Breadcrumb, Footer y navegación dinámica
 *
 * Para añadir un nuevo bloque (ej: JavaScript), solo hay que:
 * 1. Añadir la entrada en TEMAS_CONFIG con su carpeta, nombre, color y temas
 * 2. Crear los archivos HTML con los placeholders data-component
 */

// Configuración de todos los bloques y sus temas
const TEMAS_CONFIG = {
    html: {
        nombre: 'HTML',
        carpeta: 'html',
        color: 'amber',
        temas: [
            { num: 1, slug: 'estructura', titulo: 'Estructura básica' },
            { num: 2, slug: 'texto', titulo: 'Formato de texto' },
            { num: 3, slug: 'enlaces', titulo: 'Enlaces' },
            { num: 4, slug: 'imagenes', titulo: 'Imágenes' },
            { num: 5, slug: 'listas', titulo: 'Listas' },
            { num: 6, slug: 'tablas', titulo: 'Tablas' },
            { num: 7, slug: 'formularios', titulo: 'Formularios' },
            { num: 8, slug: 'semantica', titulo: 'Semántica HTML5' },
            { num: 9, slug: 'atributos', titulo: 'Atributos globales' },
            { num: 10, slug: 'accesibilidad', titulo: 'Accesibilidad' },
            { num: 11, slug: 'seo', titulo: 'SEO' },
            { num: 12, slug: 'seo-ia', titulo: 'SEO para IA' }
        ]
    },
    css: {
        nombre: 'CSS',
        carpeta: 'css',
        color: 'amber',
        temas: [
            { num: 1, slug: 'conceptos', titulo: 'Conceptos CSS' },
            { num: 2, slug: 'pseudos', titulo: 'Pseudo-elementos y Pseudo-clases' },
            { num: 3, slug: 'funciones', titulo: 'Funciones y Custom Properties' },
            { num: 4, slug: 'color-unidades', titulo: 'Color y Unidades' },
            { num: 5, slug: 'box-model', titulo: 'Modelo de Caja' },
            { num: 6, slug: 'layout', titulo: 'Layout: Flexbox y Grid' },
            { num: 7, slug: 'posicionamiento', titulo: 'Posicionamiento y Espaciado' },
            { num: 8, slug: 'interacciones', titulo: 'Interacciones y Scroll' },
            { num: 9, slug: 'texto', titulo: 'Texto y Tipografía' },
            { num: 10, slug: 'graficos', titulo: 'Formas y Gráficos' },
            { num: 11, slug: 'animaciones', titulo: 'CSS Dinámico' },
            { num: 12, slug: 'rwd', titulo: 'RWD y Accesibilidad' }
        ]
    },
    js: {
        nombre: 'JavaScript',
        carpeta: 'js',
        color: 'yellow',
        temas: [
            { num: 1, slug: 'sintaxis', titulo: 'Sintaxis y Variables' },
            { num: 2, slug: 'control', titulo: 'Control de Flujo' },
            { num: 3, slug: 'funciones', titulo: 'Funciones' },
            { num: 4, slug: 'arrays', titulo: 'Arrays' },
            { num: 5, slug: 'objetos', titulo: 'Objetos' },
            { num: 6, slug: 'dom', titulo: 'DOM' },
            { num: 7, slug: 'eventos', titulo: 'Eventos' },
            { num: 8, slug: 'asincronia', titulo: 'Asincronía' },
            { num: 9, slug: 'modulos', titulo: 'Módulos' },
            { num: 10, slug: 'apis', titulo: 'APIs Web' },
            { num: 11, slug: 'poo', titulo: 'POO y Clases' },
            { num: 12, slug: 'testing', titulo: 'Testing y Herramientas' }
        ]
    },
    ts: {
        nombre: 'TypeScript',
        carpeta: 'ts',
        color: 'blue',
        temas: [
            { num: 1, slug: 'fundamentos', titulo: 'Fundamentos' },
            { num: 2, slug: 'tipos', titulo: 'Tipos Básicos' },
            { num: 3, slug: 'interfaces', titulo: 'Interfaces y Types' },
            { num: 4, slug: 'funciones', titulo: 'Funciones Tipadas' },
            { num: 5, slug: 'genericos', titulo: 'Genéricos' },
            { num: 6, slug: 'clases', titulo: 'Clases y POO' },
            { num: 7, slug: 'unions', titulo: 'Unions e Intersecciones' },
            { num: 8, slug: 'narrowing', titulo: 'Type Guards y Narrowing' },
            { num: 9, slug: 'utility', titulo: 'Utility Types' },
            { num: 10, slug: 'modulos', titulo: 'Módulos y Namespaces' },
            { num: 11, slug: 'config', titulo: 'Configuración Avanzada' },
            { num: 12, slug: 'patrones', titulo: 'Patrones Avanzados' }
        ]
    }
};

/**
 * Detecta el tema actual basándose en la URL
 * Busca en todas las categorías de TEMAS_CONFIG
 * @returns {Object|null} { categoria, config, temaIndex, tema }
 */
function detectarTemaActual() {
    const path = window.location.pathname;
    const filename = path.split('/').pop().replace('.html', '');

    for (const [categoria, config] of Object.entries(TEMAS_CONFIG)) {
        const index = config.temas.findIndex(t => `tema${t.num}-${t.slug}` === filename);
        if (index !== -1) {
            return {
                categoria,
                config,
                temaIndex: index,
                tema: config.temas[index]
            };
        }
    }
    return null;
}

/**
 * Obtiene la ruta base según la ubicación del archivo actual
 * @returns {string}
 */
function getBasePath() {
    const path = window.location.pathname;
    for (const config of Object.values(TEMAS_CONFIG)) {
        if (path.includes(`/${config.carpeta}/`)) return '../';
    }
    return './';
}

/**
 * Mapeo de colores para evitar problemas con Tailwind purge
 */
const COLOR_CLASSES = {
    amber: {
        headerBg: 'bg-gradient-to-br from-amber-900 to-amber-800',
        btnBg: 'bg-amber-900 hover:bg-amber-800',
        textColor: 'text-amber-900',
        activeBg: 'bg-amber-50',
        activeText: 'text-amber-900',
        hoverBg: 'hover:bg-amber-50'
    },
    blue: {
        headerBg: 'bg-gradient-to-br from-blue-900 to-blue-800',
        btnBg: 'bg-blue-900 hover:bg-blue-800',
        textColor: 'text-blue-900',
        activeBg: 'bg-blue-50',
        activeText: 'text-blue-900',
        hoverBg: 'hover:bg-blue-50'
    },
    green: {
        headerBg: 'bg-gradient-to-br from-green-900 to-green-800',
        btnBg: 'bg-green-900 hover:bg-green-800',
        textColor: 'text-green-900',
        activeBg: 'bg-green-50',
        activeText: 'text-green-900',
        hoverBg: 'hover:bg-green-50'
    },
    yellow: {
        headerBg: 'bg-gradient-to-br from-yellow-700 to-yellow-600',
        btnBg: 'bg-yellow-700 hover:bg-yellow-600',
        textColor: 'text-yellow-700',
        activeBg: 'bg-yellow-50',
        activeText: 'text-yellow-700',
        hoverBg: 'hover:bg-yellow-50'
    }
};

/**
 * Genera la lista de enlaces del dropdown para una categoría
 * @param {Object} config - Configuración de la categoría
 * @param {Object} temaActual - Tema actual (para resaltarlo)
 * @param {Object} colorConfig - Configuración de colores
 * @returns {string} HTML de los enlaces
 */
function generarDropdownLinks(config, temaActual, colorConfig) {
    return config.temas.map(t => {
        const esActual = temaActual && t.num === temaActual.num;
        const classes = esActual
            ? `block px-4 py-2 text-sm ${colorConfig.activeText} ${colorConfig.activeBg} font-medium`
            : 'block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50';
        return `<a href="tema${t.num}-${t.slug}.html" class="${classes}">${t.num}. ${t.titulo}</a>`;
    }).join('\n                    ');
}

/**
 * Genera el header sticky con dropdown de navegación
 * @param {string} titulo - Título del tema
 * @param {Object} info - Información del tema actual
 */
function generarHeader(titulo, subtitulo, color = 'amber', info = null) {
    const colorConfig = COLOR_CLASSES[color] || COLOR_CLASSES.amber;
    const basePath = getBasePath();
    const header = document.createElement('header');
    header.className = `${colorConfig.headerBg} text-white sticky top-0 z-50 shadow-md`;

    const badge = info ? info.config.nombre : '';
    const dropdownLinks = info ? generarDropdownLinks(info.config, info.tema, colorConfig) : '';
    const dropdownLabel = info ? `Temas ${info.config.nombre}` : 'Temas';

    let dropdownHTML = '';
    if (info) {
        dropdownHTML = `
            <div class="relative tema-dropdown">
                <button class="flex items-center gap-2 bg-white/20 hover:bg-white/30 px-4 py-2 rounded text-sm font-medium transition-colors">
                    <span>Temas</span>
                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                    </svg>
                </button>
                <div class="tema-dropdown-menu absolute right-0 top-full mt-1 bg-white rounded-lg shadow-xl border border-gray-200 py-2 min-w-64 max-h-96 overflow-y-auto hidden">
                    <div class="px-3 py-2 text-xs font-semibold text-gray-500 uppercase tracking-wide border-b border-gray-100">${dropdownLabel}</div>
                    ${dropdownLinks}
                    <div class="border-t border-gray-100 mt-2 pt-2">
                        <a href="${basePath}index.html" class="block px-4 py-2 text-sm ${colorConfig.activeText} ${colorConfig.hoverBg} font-medium">&larr; Volver al &iacute;ndice</a>
                    </div>
                </div>
            </div>`;
    }

    header.innerHTML = `
        <div class="max-w-6xl mx-auto px-5 py-3 flex items-center justify-between gap-4">
            <a href="${basePath}index.html" class="flex items-center gap-2 text-white no-underline hover:opacity-80">
                <span class="bg-white/20 px-3 py-1 rounded font-bold text-lg">${badge}</span>
            </a>
            <h1 class="flex-1 text-lg font-semibold truncate">${titulo}</h1>
            ${dropdownHTML}
        </div>
    `;
    return header;
}

/**
 * Genera el breadcrumb de navegación
 * @param {Object} info - Información del tema actual
 */
function generarBreadcrumb(info) {
    const basePath = getBasePath();
    const nav = document.createElement('nav');
    nav.className = 'bg-white border-b border-gray-200 px-5 py-2.5 text-sm max-w-6xl mx-auto';

    let html = `<a href="${basePath}index.html" class="text-amber-900 no-underline hover:underline">Índice</a>`;

    if (info) {
        html += `
            <span class="text-gray-400 mx-1">›</span>
            ${info.config.nombre}
            <span class="text-gray-400 mx-1">›</span>
            Tema ${info.tema.num}
        `;
    }

    nav.innerHTML = html;
    return nav;
}

/**
 * Genera el footer con navegación prev/next
 * @param {Object} info - Información del tema actual
 */
function generarFooterNav(info) {
    const basePath = getBasePath();
    const colorConfig = COLOR_CLASSES[info.config.color] || COLOR_CLASSES.amber;
    const nav = document.createElement('nav');
    nav.className = 'flex justify-between items-center max-w-6xl mx-auto mt-5 px-5 pb-5';

    const temas = info.config.temas;
    const totalTemas = temas.length;
    const currentIndex = info.temaIndex;

    let prevBtn = '';
    if (currentIndex > 0) {
        const prevTema = temas[currentIndex - 1];
        prevBtn = `<a href="tema${prevTema.num}-${prevTema.slug}.html" class="inline-flex items-center gap-1.5 px-4 py-2 ${colorConfig.btnBg} text-white no-underline rounded text-xs">&larr; Tema ${prevTema.num}</a>`;
    } else {
        prevBtn = `<span class="px-4 py-2 text-gray-400 text-xs">&larr; Inicio</span>`;
    }

    const indexBtn = `<a href="${basePath}index.html" class="inline-flex items-center gap-1.5 px-4 py-2 ${colorConfig.btnBg} text-white no-underline rounded text-xs">&uarr; Volver al índice</a>`;

    let nextBtn = '';
    if (currentIndex < totalTemas - 1) {
        const nextTema = temas[currentIndex + 1];
        nextBtn = `<a href="tema${nextTema.num}-${nextTema.slug}.html" class="inline-flex items-center gap-1.5 px-4 py-2 ${colorConfig.btnBg} text-white no-underline rounded text-xs">Tema ${nextTema.num} &rarr;</a>`;
    } else {
        nextBtn = `<span class="px-4 py-2 text-gray-400 text-xs">Fin &rarr;</span>`;
    }

    nav.innerHTML = prevBtn + indexBtn + nextBtn;
    return nav;
}

/**
 * Genera el footer con copyright
 * @param {Object} info - Información del tema actual
 */
function generarFooter(info) {
    const footer = document.createElement('footer');
    footer.className = 'text-center py-5 text-gray-400 text-xs border-t border-gray-200 mt-4';

    const totalTemas = info ? info.config.temas.length : '?';
    const temaActual = info ? info.tema.num : '?';
    const nombre = info ? info.config.nombre : 'Apuntes';

    footer.innerHTML = `<p>Apuntes ${nombre} — Tema ${temaActual} de ${totalTemas}</p>`;
    return footer;
}

/**
 * Inicializa los componentes en la página
 * Busca elementos con data-component y los reemplaza
 */
function initComponents() {
    const info = detectarTemaActual();

    // Header
    const headerPlaceholder = document.querySelector('[data-component="header"]');
    if (headerPlaceholder && info) {
        const titulo = headerPlaceholder.dataset.titulo || `Tema ${info.tema.num}: ${info.tema.titulo}`;
        const subtitulo = headerPlaceholder.dataset.subtitulo || '';
        const header = generarHeader(titulo, subtitulo, info.config.color, info);
        headerPlaceholder.replaceWith(header);
    }

    // Breadcrumb
    const breadcrumbPlaceholder = document.querySelector('[data-component="breadcrumb"]');
    if (breadcrumbPlaceholder) {
        const breadcrumb = generarBreadcrumb(info);
        breadcrumbPlaceholder.replaceWith(breadcrumb);
    }

    // Footer navigation
    const footerNavPlaceholder = document.querySelector('[data-component="footer-nav"]');
    if (footerNavPlaceholder && info) {
        const footerNav = generarFooterNav(info);
        footerNavPlaceholder.replaceWith(footerNav);
    }

    // Footer
    const footerPlaceholder = document.querySelector('[data-component="footer"]');
    if (footerPlaceholder) {
        const footer = generarFooter(info);
        footerPlaceholder.replaceWith(footer);
    }
}

// Auto-inicializar cuando el DOM esté listo
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initComponents);
} else {
    initComponents();
}

// Exportar para uso manual si es necesario
window.ApuntesComponents = {
    TEMAS_CONFIG,
    detectarTemaActual,
    generarHeader,
    generarBreadcrumb,
    generarFooterNav,
    generarFooter,
    initComponents
};
