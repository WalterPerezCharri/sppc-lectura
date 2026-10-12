# SPPC · Entrenador de Lectura

Prototipo local del módulo de lectura del **Sistema Piramidal de Práctica Continua (SPPC)** — academia de entrenamiento académico, Perú (7 a 17 años).

## Qué es

Un único archivo HTML autocontenido (`index.html`) para entrenar y medir fluidez lectora:

- **Biblioteca graduada**: textos en español por nivel (L1 a L6) con metas de velocidad según el plan SPPC (20 → 200+ palabras por minuto).
- **Escuchar modelo**: lectura en voz alta con resaltado palabra por palabra (karaoke) en 3 modos: **Corrido**, **Palabra por palabra** y **Por sílabas** (gar·ban·zo) con pausa ajustable entre palabras. Funciona sin internet.
- **Voces y géneros literarios**: selector de voz (instala voces naturales en Windows 11: Configuración → Accesibilidad → Narrador → «Agregar voces naturales»), control de **tono** y perfiles rápidos: *Aventura (voz grave)*, *Novela juvenil (femenina)*, *Cuento infantil (tono niño)*.
- **Practicar con medición**: cronómetro + dos modos de evaluación:
  - *Automático*: reconocimiento de voz del navegador (Chrome/Edge, requiere internet).
  - *Manual (offline)*: el tutor toca las palabras con error; el sistema calcula ppm, precisión y veredicto contra la meta.
- **Progreso**: historial local por máquina, gráfico de evolución y exportación a CSV.

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
