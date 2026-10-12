# SPPC · Entrenador de Lectura

Prototipo local del módulo de lectura del **Sistema Piramidal de Práctica Continua (SPPC)** — academia de entrenamiento académico, Perú (7 a 17 años).

## Qué es

Un único archivo HTML autocontenido (`index.html`) para entrenar y medir fluidez lectora:

- **Biblioteca graduada**: textos en español por nivel (L1 a L6) con metas de velocidad según el plan SPPC (20 → 200+ palabras por minuto).
- **Escuchar modelo**: lectura en voz alta con resaltado palabra por palabra (karaoke) en 3 modos: **Corrido**, **Palabra por palabra** y **Por sílabas** (gar·ban·zo) con pausa ajustable entre palabras. Funciona sin internet.
- **Voces y géneros literarios**: selector de voz (instala voces naturales en Windows 11: Configuración → Accesibilidad → Narrador → «Agregar voces naturales»), control de **tono** y perfiles rápidos: *Aventura (voz grave)*, *Novela juvenil (femenina)*, *Cuento infantil (tono niño)*.
- **Práctica guiada en eco** (modo por defecto): al pulsar «Comenzar lectura», la voz modelo lee con karaoke y el estudiante **repite en voz alta** siguiendo el ritmo — vista, oído y voz a la vez, sin interrupciones. El tutor escucha y **toca las palabras con error sin detener la lectura**; al final se muestran las palabras a reforzar. La progresión consiste en subir la velocidad poco a poco.
- **Modos libres (solo diagnóstico)**: el estudiante lee sin modelo — con reconocimiento de voz del navegador (Chrome/Edge, requiere internet) o con marcado manual del tutor (offline).
- **Progreso**: historial local por máquina, gráfico de evolución y exportación a CSV.
- **Biblioteca externa**: carga cuentos y libros desde archivos **`.pdf`** o `.txt` (selección múltiple). Los libros largos se dividen en partes de ~250 palabras. Los textos cargados duran solo la sesión — la biblioteca viaja en tus archivos (USB, correo), no en la máquina. Botón **«❓ Instrucciones de carga»** con las reglas numeradas.
- **Acceso rápido**: el programa recuerda los **últimos 10 archivos abiertos** y permite recargarlos con un clic (Chrome/Edge guardan un acceso autorizado al archivo; si el archivo se movió o borró, el acceso se retira solo de la lista).

## Archivos PDF

- Se extrae el texto de PDFs generados desde Word, Google Docs, LibreOffice, etc.
- Los libros largos se dividen automáticamente en partes de práctica.
- El título del texto será el nombre del archivo (consejo: `El perro fiel L3.pdf`).
- **Excepción**: un PDF *escaneado* (fotos de páginas, sin texto seleccionable) no se puede leer — la app lo avisará. Para esos casos, conviértelos primero a texto (OCR).

## Formato de archivos de texto (.txt)

```text
NIVEL: L2
TITULO: El mercado del sábado

Aquí va el cuento completo…
```

- `NIVEL:` puede ser L1 a L6 (si se omite, usa el nivel elegido en pantalla).
- `TITULO:` es opcional (si se omite, usa el nombre del archivo).
- Si el texto supera las 500 palabras, se divide automáticamente en partes de práctica.
- Desde la app puedes descargar `plantilla_cuento_sppc.txt` como ejemplo.

## Uso

1. Copia `index.html` a la tablet, laptop o PC.
2. Ábrelo con doble clic (recomendado: Chrome o Edge).
3. Escribe el nombre del estudiante, elige nivel y texto, y practica.

### Como aplicación de escritorio en Windows 11

- Doble clic en **`Abrir SPPC Lectura.bat`**: se abre en modo aplicación (ventana propia, sin barra del navegador), usando Edge o Chrome. Funciona sin internet.
- Opcional: clic derecho en **`Crear acceso directo.ps1`** → «Ejecutar con PowerShell» para tener el ícono **SPPC Lectura** en el Escritorio.

Los datos se guardan en el propio dispositivo (`localStorage`). Exporta el CSV semanalmente para consolidar en la planilla central de la academia.

## Publicar con GitHub Pages (opcional)

Con el repositorio en GitHub: **Settings → Pages → Deploy from branch → main → / (root)**. La app queda disponible en una URL gratuita, útil como respaldo de la copia local.

## Privacidad

Sin servidores, sin cuentas, sin envío de datos. Todo ocurre en el dispositivo.

## Roadmap

- [ ] Más textos por nivel (objetivo: 20+)
- [ ] Preguntas de comprensión al final de cada lectura
- [ ] Módulo hermano de cálculo mental con corrección
- [ ] Evaluación de voz infantil offline con Whisper local
