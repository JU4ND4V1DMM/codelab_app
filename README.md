# CODELAB

Centro de operaciones para automatización, reportería, IA, procesos RPA, analítica y herramientas corporativas.

Este repositorio solo distribuye el instalador — el código fuente es privado.

## Instalación (primera vez)

Necesitas [Git](https://git-scm.com/downloads) instalado (es lo que permite que se actualice solo, sin volver a
descargar nada a mano).

1. Clona este repositorio: `git clone https://github.com/JU4ND4V1DMM/codelab_app.git` (o usa GitHub Desktop si no
   usas la terminal).
2. Entra a la carpeta que se creó y haz doble clic en `Actualizar_y_Abrir.vbs`.
3. Déjalo a mano (escritorio, o crea un acceso directo) — es lo único que vas a volver a abrir.

## Uso diario

Haz doble clic en `Actualizar_y_Abrir.vbs`. Cada vez que lo abras:

1. Revisa si hay una versión más nueva de CODELAB en este repositorio (`git pull`, sin ventanas).
2. Instala esa versión en silencio (sin preguntas, sin ventanas) — la primera vez, esto es lo que instala
   CODELAB; las siguientes veces, lo actualiza si cambió.
3. Abre CODELAB.

No necesitas descargar nada a mano nunca más — siempre queda actualizado con un doble clic.

## Actualizaciones dentro de la app

Además del `git pull` automático de este launcher, CODELAB revisa por sí sola si hay una versión más
reciente cada vez que la abres (y cada hora si la dejas abierta). Si hay una disponible, aparece un
aviso en la barra superior — un clic la descarga e instala. Cuando un cambio es crítico, esa
actualización puede volverse obligatoria para seguir usando la app.

## Problemas comunes

- **Windows SmartScreen advierte "aplicación no reconocida"**: es normal en instaladores sin firma de código
  comercial. Click en "Más información" → "Ejecutar de todas formas".
- **El antivirus bloquea el `.vbs` o el instalador**: agrega una excepción para esta carpeta — el launcher solo
  actualiza el repositorio y ejecuta el instalador, no descarga nada de fuera de GitHub.
- **No pasó nada al hacer doble clic**: revisa que tengas Git instalado (necesario para la actualización
  automática) — [git-scm.com/downloads](https://git-scm.com/downloads).

## Licencia

CODELAB requiere una licencia activa para los módulos de Utilidades, RPA, Reportería, Campañas, IA y
Demográficos. El módulo de Inicio, Sistema, Manuales y Soporte están disponibles sin licencia.

Propiedad de CODELAB. Todos los derechos reservados.
