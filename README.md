# SPPC · Entrenador de Lectura — v2.9.2

Sistema Piramidal de Práctica Continua para la academia **Proyecto Academia Cerro de Pasco**.
Entrenador de fluidez lectora para estudiantes de **7 a 17 años**, con niveles **L1–L15** (metas de 20 a 300 palabras por minuto, de 20 en 20).

## Qué hay de nuevo en v2.9.2 (corrido 100% continuo)

- **Corrido sin pausas artificiales**: la página completa se lee como UNA sola
  frase corrida; las únicas pausas son las naturales que la voz hace en punto
  y coma. Se eliminaron los rellenos de silencio del reloj en este modo.
- **Velocidad en corrido = velocidad de la voz** (ppm/150): a 120 ppm la voz va
  a 0.8×, a 240 a 1.6×. El piso natural de la voz es ~65 ppm; velocidades más
  lentas con pausa exacta entre palabras están en los modos palabra y sílabas.
- El karaoke sigue palabra por palabra sobre el PDF al ritmo real de la voz.
- Sílabas: la corrección de v2.9.1 se mantiene (todas con tilde de apoyo salvo
  da/llu/ñ-planas; "que/gue" una sola sílaba). Verifica que la pantalla de
  inicio diga **PROTOTIPO 2.9.2** — si dice otro número, estás viendo la
  versión vieja en caché (Ctrl+F5).

### v2.9.1 (pronunciación corregida)

- **Las sílabas vuelven a sonar naturales**: la regla ahora es tilde de apoyo
  en TODAS las sílabas **excepto** las pocas que se rompen con tilde
  (`da`, `llu`, `ña` y demás con ñ van planas; vocales sueltas a/e/o planas).
  Así `ca` ya no suena "ce a", `lle` ya no suena "ele ele e", `bá/jó/gá/có/drá`
  suenan como sílabas reales, y `da/llu/ña` siguen correctas.
- **"que/qui/gue/gui" son una sola sílaba**: la u es muda ahí, no es diptongo.
  La división en hiato (di·a, pu·en·te, llu·vi·a) se mantiene para todo lo demás.
- **ñ protegida**: un detalle técnico (normalización) convertía `niño` en
  "ni·no"; ahora la ñ se conserva siempre.
- **Corrido sin frenones a media oración**: los bloques de lectura ahora cortan
  justo en la puntuación (punto, coma si la frase es larga), así la pausa cae
  donde debe. La voz absorbe todo el presupuesto de tiempo — habla natural y el
  reloj solo rellena el sobrante al final de la frase.
- **Karaoke al día**: el marcado de respaldo sigue el ritmo real de la voz;
  ya no se queda atrás ni deja palabras sin marcar.
- **Corrección de seguridad**: al detener una lectura lenta y empezar otra de
  inmediato, la sesión anterior ya no puede cortar la nueva ni abrir un cuadro
  de resultados a mitad de la lectura.
- Verificado: palabra 60→60, sílabas 20→20, corrido 20→20 y 120→120, y
  cambios de modo/velocidad en secuencia sin interferencias.

### v2.9 (diptongos y primer ajuste de pronunciación)

- **Las sílabas se leen como palabras naturales**: la voz ya no deletrea
  ("da" antes sonaba "de a", "llu" sonaba "elle u", "ña" sonaba "na").
  Cada sílaba se envía tal cual a la voz, con normalización de tildes y eñes;
  solo unas pocas sílabas ambiguas (na, sa, ri, cia, au) llevan tilde de apoyo
  para que la voz no las confunda con otra palabra.
- **Diptongos separados en modo sílabas**: la división es hiato puro — cada
  vocal es su propia sílaba: `di·a`, `pu·en·te`, `llu·vi·a`, `ma·ña·na`.
  El niño se acomoda sílaba por sílaba, como marca el método.
- **Corrido fluido**: bloques seguidos de ~8 palabras sin frenones en cada
  punto o coma; la pausa de la puntuación es la micro-pausa natural de la voz
  y el reloj de ppm reparte el tiempo parejo entre bloques.
- Verificado: corrido 20 ppm → 20 reales, corrido 120 → 120, palabra 60 → 60,
  sílabas 20 → 20.

### v2.8 (calibración de lectura)

- **Modelo de calibración oficial**: el presupuesto de cada palabra
  (60000/ppm milisegundos) incluye la voz y las pausas. Las ppm son
  cronometradas y exactas en los tres modos.
- **Un solo dial de pausa** ("Tiempo entre palabras / sílabas"): el mismo T se
  usa entre palabras y entre sílabas, y se descuenta del presupuesto — pausa
  más larga → la voz habla más rápido para mantener las ppm. Dos diales de
  tiempo en total: velocidad (20–300 ppm, barra) y pausa (panel).
- **Modo sílabas**: `Mi (T) ma(T)ma (T) es(T) ta…` — pausa tras cada sílaba.
- **Tercer texto de muestra**: "Mi mamá está en la cama" (calibración, L1).
- Verificado con cronómetro: 20 ppm → 21 reales en palabra, sílabas y corrido.

### v2.7

- **Sincronización real de ppm**: el modo Corrido antes mandaba todo el texto de
  una vez a la voz y las ppm no se cumplían (20 ppm sonaba a ~59). Ahora los tres
  modos usan un **reloj de sincronización**: tras cada palabra/frase la app compara
  el tiempo real con la meta y ajusta la pausa siguiente. Medido: 20 ppm → 21
  reales, 120 → 120, y así hasta 300 ppm con cualquier documento.

### v2.6

- **Regleta de meta de velocidad**: la parrilla de 15 casillas se reemplazó por una
  regleta compacta de 20 a 300 ppm en el panel de Práctica. Moverla fija el nivel
  (L1–L15) y lleva la velocidad de la barra a esa meta.
- **Opciones de lectura en el panel de Práctica**: voz, tono, pausa extra y perfiles
  (Aventura / Novela / Infantil) viven ahora en el mismo panel, estilo cuadro de
  opciones de lectura en voz alta. La velocidad sigue en la barra superior.

### v2.5

- **Textos de muestra**: sección propia en el panel con 2 textos (niños y
  adolescentes), listos para demos. Los archivos viven en la carpeta
  `textos-muestra/` junto al programa; la app lee el archivo real y, si el
  navegador bloquea la lectura local, usa una copia de respaldo — la muestra
  siempre abre.
- **Niveles hasta 300 ppm**: L11–L15 (220, 240, 260, 280, 300 ppm). El control
  de velocidad llega a 300 ppm y esas velocidades son reales en cualquier PDF.

### v2.4

- **Velocidad en ppm reales**: el control ya no es un multiplicador "×" sino la meta
  directa en palabras por minuto, de **20 a 300 ppm**, y vale igual para cualquier
  documento: PDF abierto, TXT externo o cualquier nivel. A 160 ppm, lee a 160 ppm.
- **Sin biblioteca interna**: se retiró la sección "Textos del nivel". La biblioteca
  es tu carpeta de archivos: abres PDF/TXT y los **últimos 10 archivos** quedan
  siempre visibles en el panel para reabrirlos con un clic.

### v2.3

- **Niveles sin edades**: las casillas ya no dicen "7–8 años" ni "14 años" — nadie
  se pone un freno solo. El nivel es solo una meta de velocidad: quien lee rápido,
  sube.
- **Velocidad real en cualquier documento**: la pausa entre palabras ahora baja
  al subir la velocidad (antes quedaba fija y frenaba los PDF abiertos). El control
  llega hasta **2.5×** y manda igual en un PDF abierto que en un texto de la biblioteca.

### v2.2

- **Botón ■ Stop rojo** junto a Leer, bien visible.
- **Stop definitivo**: al detener una lectura, la voz y el resaltado se cortan por
  completo. Cambiar la velocidad o el modo y volver a empezar nunca deja dos
  lecturas sonando en paralelo.

### v2.1

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
