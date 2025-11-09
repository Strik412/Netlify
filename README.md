# Hola Mundo - despliegue en Netlify

Proyecto mínimo con una página estática que muestra "Hola Mundo" y un botón que lanza una alerta.

Contenido:

- `public/` - archivos estáticos (index.html, styles.css, app.js)
- `Dockerfile` - para servir `public/` con nginx
- `.github/workflows/netlify-deploy.yml` - workflow para CI/CD hacia Netlify
- `netlify.toml` - configuración de publicación para Netlify

Requisitos y configuración

1. Crear un sitio en Netlify (opcional) o usar uno existente. Copia el valor de `Site ID`.
2. En el repositorio de GitHub, agrega los siguientes secretos (Settings → Secrets → Actions):
   - `NETLIFY_AUTH_TOKEN` - tu token de Netlify (Personal access token)
   - `NETLIFY_SITE_ID` - el Site ID de tu sitio en Netlify

Opcional: para que el workflow también construya y publique una imagen Docker en Docker Hub, añade:
   - `DOCKERHUB_USERNAME`
   - `DOCKERHUB_TOKEN`

Cómo probar localmente

1) Abrir `public/index.html` en el navegador (no requiere Node).

2) Con Docker (construir y ejecutar):

```powershell
# desde la raíz del proyecto
docker build -t hola-mundo-netlify:local .;
docker run -p 8080:80 hola-mundo-netlify:local
# Abrir http://localhost:8080
```

Despliegue continuo

Al hacer push a la rama `main`, el workflow `.github/workflows/netlify-deploy.yml` desplegará la carpeta `public/` a Netlify (necesita los secretos mencionados).

Notas

- Netlify sirve el contenido estático; el `Dockerfile` es para entornos donde quieras contenerizar la app (p.ej. despliegue en otros hosts).
- Si no quieres usar Docker Hub, puedes omitir las variables `DOCKERHUB_*` y el paso de push no se ejecutará.
# Netlify
# Netlify
# Netlify
