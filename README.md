# SPPC · Entrenador de Lectura — v2.1

Sistema Piramidal de Práctica Continua para la academia **Proyecto Academia Cerro de Pasco**.
Entrenador de fluidez lectora para estudiantes de **7 a 17 años**, con niveles **L1–L10** (metas de 20 a 200 palabras por minuto, de 20 en 20).

## Qué hay de nuevo en v2.1

- **Niveles L1–L10**: las metas de velocidad avanzan de 20 en 20 ppm (20, 40, 60 … 200).
- El cuadro de resultados tiene botón **✕** para cerrarlo directamente.

### v2.0

- **Interfaz tipo lector profesional** (estilo Adobe Acrobat / Sumatra): riel de
  iconos a la izquierda, barra de herramientas superior, página centrada sobre
  fondo gris y barra de estado.
- **Lectura directa del PDF**: el PDF se abre y se lee *tal cual* en la ventana
  principal (ya no se convierte a texto). La voz modelo resalta cada palabra
  **sobre la página del PDF**, como la "lectura en voz alta" de Adobe Reader.
- Navegación de páginas y zoom en la barra superior.
- Diseño más sobrio y moderno, apropiado para 7–17 años.

## Uso

1. Abre `index.html` en Chrome o Edge (doble clic, funciona sin internet).
2. Pulsa el icono de carpeta (o **Abrir PDF o TXT**) y elige el archivo.
3. Pulsa **▶ Leer**:
   - En modo **Eco** (predeterminado) la voz modelo lee y resalta cada palabra
     como karaoke; el estudiante repite en voz alta siguiendo el ritmo.
   - El tutor **toca las palabras con error** sin detener la lectura.
4. Al terminar, el veredicto indica si conviene subir la velocidad — esa es la
   progresión, sin exámenes ni interrupciones.
5. Modos de lectura del modelo: **Corrido**, **Palabra por palabra** o
   **Por sílabas** (con escudo anti-siglas: na, ri, dia, SA se pronuncian bien).
6. Modos de práctica (botón del micrófono): **Eco** → **Libre · auto**
   (la app escucha y sigue el avance) → **Libre · manual** (el tutor marca).

## Panel lateral (riel izquierdo)

- **Biblioteca**: nombre del estudiante, nivel SPPC (L1–L10), textos incluidos,
  carga de archivos y **últimos 10 archivos abiertos** para reabrir con un toque.
- **Voz y velocidad**: voces en español, presets (aventura / novela / infantil),
  tono y pausa entre palabras.
- **Progreso**: historial de sesiones con gráfico de ppm y exportación a CSV.
- **Instrucciones**: reglas de carga de archivos en formato instructivo.

## Reglas de carga

1. Los PDF escaneados (imagen sin texto) no se aceptan.
2. Los TXT con más de 500 palabras se dividen solos en partes de ~250.
3. Los TXT pueden llevar encabezado `NIVEL: L1`…`L6` y `TITULO: …`.
4. Guarda los TXT en codificación UTF-8.

## Archivos

- `index.html` — la aplicación completa.
- `pdf.min.js`, `pdf.worker.min.js` — motor PDF.js 3.11 (necesarios junto a index.html).
- `Abrir SPPC Lectura.bat` — atajo de apertura en Windows.
- `Crear acceso directo.ps1` — crea acceso directo en el escritorio.

Todo funciona **sin internet**: la app y el motor PDF son locales.
