/**
 * Componentes reutilizables para los apuntes HTML
 * Header, Footer y navegación dinámica
 */

// Configuración de todos los temas
const TEMAS_CONFIG = {
    html: {
        nombre: 'HTML',
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
    }
    // Aquí se pueden añadir más categorías: css, javascript, etc.
};

/**
 * Detecta el tema actual basándose en la URL
 * @returns {Object|null} { categoria, temaIndex, tema }
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
    if (path.includes('/html/') || path.includes('/css/') || path.includes('/js/')) {
        return '../';
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
        textColor: 'text-amber-900'
    },
    blue: {
        headerBg: 'bg-gradient-to-br from-blue-900 to-blue-800',
        btnBg: 'bg-blue-900 hover:bg-blue-800',
        textColor: 'text-blue-900'
    },
    green: {
        headerBg: 'bg-gradient-to-br from-green-900 to-green-800',
        btnBg: 'bg-green-900 hover:bg-green-800',
        textColor: 'text-green-900'
    }
};

/**
 * Genera el header principal de la página
 * @param {string} titulo - Título del tema
 * @param {string} subtitulo - Subtítulo/descripción
 * @param {string} color - Color del tema (amber, blue, etc.)
 */
function generarHeader(titulo, subtitulo, color = 'amber') {
    const colorConfig = COLOR_CLASSES[color] || COLOR_CLASSES.amber;
    const header = document.createElement('header');
    header.className = `${colorConfig.headerBg} text-white py-6 px-5 text-center`;
    header.innerHTML = `
        <h1 class="text-3xl font-bold mb-1">${titulo}</h1>
        <p class="opacity-90">${subtitulo}</p>
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
    const nav = document.createElement('nav');
    nav.className = 'flex justify-between items-center max-w-6xl mx-auto mt-5 px-5 pb-5';

    const temas = info.config.temas;
    const totalTemas = temas.length;
    const currentIndex = info.temaIndex;

    // Botón anterior
    let prevBtn = '';
    if (currentIndex > 0) {
        const prevTema = temas[currentIndex - 1];
        prevBtn = `<a href="tema${prevTema.num}-${prevTema.slug}.html" class="inline-flex items-center gap-1.5 px-4 py-2 bg-amber-900 text-white no-underline rounded text-xs hover:bg-amber-800">← Tema ${prevTema.num}</a>`;
    } else {
        prevBtn = `<span class="px-4 py-2 text-gray-400 text-xs">← Inicio</span>`;
    }

    // Botón índice
    const indexBtn = `<a href="${basePath}index.html" class="inline-flex items-center gap-1.5 px-4 py-2 bg-amber-900 text-white no-underline rounded text-xs hover:bg-amber-800">↑ Volver al índice</a>`;

    // Botón siguiente
    let nextBtn = '';
    if (currentIndex < totalTemas - 1) {
        const nextTema = temas[currentIndex + 1];
        nextBtn = `<a href="tema${nextTema.num}-${nextTema.slug}.html" class="inline-flex items-center gap-1.5 px-4 py-2 bg-amber-900 text-white no-underline rounded text-xs hover:bg-amber-800">Tema ${nextTema.num} →</a>`;
    } else {
        nextBtn = `<span class="px-4 py-2 text-gray-400 text-xs">Fin →</span>`;
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

    footer.innerHTML = `<p>Apuntes HTML — Tema ${temaActual} de ${totalTemas}</p>`;
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
        const header = generarHeader(titulo, subtitulo, info.config.color);
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
