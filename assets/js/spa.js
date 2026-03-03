(function () {
  const root = document.getElementById('spa-root');
  if (!root) return;

  const configSource = window.ApuntesComponents && window.ApuntesComponents.TEMAS_CONFIG
    ? window.ApuntesComponents.TEMAS_CONFIG
    : {};

  const sectionsOrder = ['html', 'css', 'js', 'ts', 'front', 'back', 'bd', 'fullstack'];
  const sections = sectionsOrder.filter((k) => configSource[k]);

  root.innerHTML = `
    <main class="w-full h-screen">
      <iframe id="spa-frame" class="w-full h-full bg-gray-50 border-0" title="Contenido de apuntes"></iframe>
    </main>
  `;

  const frame = document.getElementById('spa-frame');
  let syncingFromFrame = false;

  function parseHash() {
    const raw = window.location.hash.replace(/^#/, '') || '/home';
    return raw.startsWith('/') ? raw : `/${raw}`;
  }

  function toPath(route) {
    if (!route || route === '/home') return 'index-mpa.html';

    const clean = route.startsWith('/') ? route.slice(1) : route;
    const parts = clean.split('/').filter(Boolean);
    if (parts.length < 2) return 'index-mpa.html';

    const [section, rawFile] = parts;
    const sectionExists = sections.includes(section);
    if (!sectionExists) return 'index-mpa.html';

    if (rawFile === 'index') return `${section}/index.html`;

    const file = rawFile.endsWith('.html') ? rawFile : `${rawFile}.html`;
    return `${section}/${file}`;
  }

  function routeFromPathname(pathname) {
    const rel = pathname.replace(/^\/+/, '');
    const parts = rel.split('/').filter(Boolean);
    if (parts.length !== 2) return null;

    const [section, file] = parts;
    if (!sections.includes(section)) return null;

    if (file === 'index.html') return `/${section}/index`;
    return `/${section}/${file.replace(/\.html$/, '')}`;
  }

  function installFrameLinkBridge() {
    let doc;
    try {
      doc = frame.contentDocument;
    } catch (e) {
      return;
    }
    if (!doc) return;
    if (doc.__spaBridgeInstalled) return;
    doc.__spaBridgeInstalled = true;

    doc.addEventListener('click', (event) => {
      const link = event.target.closest('a[href]');
      if (!link) return;

      const href = link.getAttribute('href');
      if (!href || href.startsWith('#') || href.startsWith('mailto:') || href.startsWith('tel:')) return;

      let url;
      try {
        url = new URL(href, frame.contentWindow.location.href);
      } catch (e) {
        return;
      }

      if (url.origin !== window.location.origin) return;
      const pathname = url.pathname.replace(/^\/+/, '');

      if (pathname === '' || pathname === 'index.html' || pathname === 'index-mpa.html') {
        event.preventDefault();
        window.location.hash = '/home';
        return;
      }

      const route = routeFromPathname(url.pathname);
      if (!route) return;

      event.preventDefault();
      window.location.hash = route;
    });
  }

  function navigate() {
    const route = parseHash();
    const path = toPath(route);

    const target = new URL(path, window.location.href).href;
    if (frame.src !== target) {
      frame.src = target;
    }
  }

  frame.addEventListener('load', () => {
    if (syncingFromFrame) {
      syncingFromFrame = false;
      return;
    }

    try {
      const url = new URL(frame.contentWindow.location.href);
      const rel = url.pathname.replace(/^\//, '');

      if (rel === '' || rel === 'index.html') {
        syncingFromFrame = true;
        window.location.hash = '/home';
        frame.src = 'index-mpa.html';
        return;
      }

      installFrameLinkBridge();

      const route = routeFromPathname(url.pathname);
      if (!route) return;

      if (parseHash() !== route) {
        syncingFromFrame = true;
        window.location.hash = route;
      }
    } catch (e) {
      // Ignore restricted access
    }
  });

  window.addEventListener('hashchange', navigate);
  if (!window.location.hash) {
    window.location.hash = '/home';
  } else {
    navigate();
  }
})();
